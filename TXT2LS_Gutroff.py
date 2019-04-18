
class Gutroff(object):

    def __init__(self):
        # self.last_x, self.last_y, self.last_z, self.last_weld_state, self.last_nr = state_list

        self.last_x = None
        self.last_y = None
        self.last_z = None
        # self.last_rx = None
        # self.last_ry = None
        # self.last_rz = None
        # self.last_A = None
        # self.last_B = None
        # self.last_v = None
        # self.last_cnt = None
        # self.path_control_style = None
        self.last_weld_state = None
        self.last_nr = 0
        self.output = None
        self.tail = None

    def get_main_header(self):
        utool_number = 3
        template = [f"  CALL HOME_ALL",
                    "",
                    f"  UFRAME_NUM = 1",
                    f"  UTOOL_NUM = {utool_number}",
                    f"  COL GUARD ADJUST 150",
                    f"  !Teach Startpoint in PR90",
                    f"  !----",
                    # f"  !Hoehenzusatz R99 in mm",
                    f"  !Weld speed R100 in mm/sec",
                    f"  !Retraction +Z in R101 in mm",
                    f"  !Retraction speed in R102 in %",
                    f"  !",
                    f"  !Wartezeit nach Schweissstop R104 in s",
                    f"  !",
                    f"  !----",
                    f"  !Jobs per Layer/Ebene in ",
                    f"  !R111-118 für Ebene 1-8 anzugeben",
                    f"  !R118 ist dabei fur Ebene 8 und >8",
                    f""]
        return template

    def parse_line(self, dataset, flag, output):
        self.output = output
        # print(dataset)
        nr, x, y, z, rx, ry, rz, weld_state = dataset.replace(
            " ", "").replace("\n", "").split(",")
        assert_border_xyz = 300
        # assert_border_rxryrz = 45
        # assert_border_AB = 80 # fuers erste # TODO
        nr = int(nr)
        assert nr >= 0
        x = float(x)
        assert x <= assert_border_xyz and x >= -assert_border_xyz
        y = float(y)
        assert y <= assert_border_xyz and y >= -assert_border_xyz
        z = float(z)
        assert z <= assert_border_xyz and z >= 0
        weld_state = int(weld_state)
        assert weld_state == 1 or weld_state == 0

        if self.last_weld_state is not None:
            # print("not None")
            if weld_state != self.last_weld_state:
                # print("not equal")
                if weld_state == 1:
                    # end of retraction and start welding
                    # remove last drive command, antroduce safety point,
                    # drive there, and reinsert drivecommand
                    self.output[-1] = f"  PR[92] = PR[91]"
                    self.output.append(f"  PR[92,3] = PR[92,3] + R[101]")
                    self.output.append(f"J PR[92] R[102]% CNT100")
                    self.output.append(
                        f"L PR[91] 100mm/sec FINE RampTo R[100]")

                    self.output[-1] += "  Weld Start[1,5.0]"
                    if nr == 1:
                        self.output.append(f"  GO[2]=R[111]")
                    elif nr == 2:
                        self.output.append(f"  GO[2]=R[112]")
                    elif nr == 3:
                        self.output.append(f"  GO[2]=R[113]")
                    elif nr == 4:
                        self.output.append(f"  GO[2]=R[114]")
                    elif nr == 5:
                        self.output.append(f"  GO[2]=R[115]")
                    elif nr == 6:
                        self.output.append(f"  GO[2]=R[116]")
                    elif nr == 7:
                        self.output.append(f"  GO[2]=R[117]")
                    elif nr >= 8:
                        self.output.append(f"  GO[2]=R[118]")

                elif weld_state == 0:
                    # print("0")
                    # end of welding and start of retraction
                    # add weldstop to last drive command, add retractio and drive there

                    self.output[-1] += "  Weld End[1,5.0,0.2s]"
                    self.output.append(f"  WAIT R[104]")
                    self.output.append(f"  PR[92] = PR[91]")
                    self.output.append(f"  PR[92,3] = PR[92,3] + R[101]")
                    self.output.append(f"J PR[92] R[102]% CNT100")

        self.last_weld_state = weld_state

        # if layer changes, then actualise from teached point
        # to enable corrections in process
        if nr != self.last_nr:
            self.last_nr = nr
            self.output.append(f"  !-- Layer/Ebene {nr} --")
            self.output.append(f"  PR[91] = PR[90]")
            self.output.append(f"  PR[91,1] = PR[90,1] + {x:4.3f}")
            self.output.append(f"  PR[91,2] = PR[90,2] + {y:4.3f}")
            self.output.append(f"  PR[91,3] = PR[90,3] + {z:4.3f}")
            self.last_x = x
            self.last_y = y
            self.last_z = z
        else:
            if x != self.last_x:
                self.last_x = x
                self.output.append(f"  PR[91,1] = PR[90,1] + {x:4.3f}")
            if y != self.last_y:
                self.last_y = y
                self.output.append(f"  PR[91,2] = PR[90,2] + {y:4.3f}")
            if z != self.last_z:
                self.last_z = z
                self.output.append(f"  PR[91,3] = PR[90,3] + {z:4.3f}")

        if flag == "start":
            self.output.append(f"L PR[91] R[100]mm/sec CNT100")
        elif flag == "welding":
            self.output.append(f"L PR[91] R[100]mm/sec CNT100")
        elif flag == "stop":
            self.output.append(f"L PR[91] R[100]mm/sec CNT100")

            self.output[-1] += "  Weld End[1,3.0,0.3s]"
            self.output.append(f"  PR[92] = PR[91]")
            self.output.append(f"  PR[92,3] = PR[92,3] + R[101]")
            self.output.append(f"J PR[92] R[102]% CNT100")
            self.output.append(f"  WAIT   10.00(sec)")
        else:
            print(f"something is wrong with dataset: {dataset}")

