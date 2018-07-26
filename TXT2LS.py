import os
import datetime
import sys


class Parser_Fanuc(object):

    def __init__(self, filepath=None, textBrowser=None):
        pass
        self.filepath = filepath
        if self.filepath is not None:
            index = self.filepath.rindex("/")
            self.filename = self.filepath[index + 1:]
            self.dirpath = self.filepath[:index]
            print(self. dirpath, self.filename)
        self.textBrowser = textBrowser
        self.src = os.path.join(os.curdir, "src\\")
        self.target = os.path.join(os.curdir, "target\\")
        self.last_x = None
        self.last_y = None
        self.last_z = None
        self.last_rx = None
        self.last_ry = None
        self.last_rz = None
        self.last_A = None
        self.last_B = None
        self.last_v = None
        self.last_cnt = None
        self.path_control_style = None
        self.last_weld_state = None
        self.last_job_nr = None
        self.output = None
        self.tail = None

    def start(self):
        if self.filepath is not None:
            self.parse_file(self.filepath)
            self.generate_output_file(self.dirpath, self.filename)
            self.textBrowser.append(f"File {self.filename} erfolgreich nach {self.dirpath} geparsed.")
        else:
            for (dirpath, dirname, filenames) in os.walk(self.src):
                for filename in filenames:
                    self.parse_file(os.path.join(dirpath, filename))
                    self.generate_output_file(self.target, filename)
                    if self.textBrowser is not None:
                        self.textBrowser.append(f"File {filename} erfolgreich nach {self.target} geparsed.")
                    else:
                        print(f"File {filename} erfolgreich nach {self.target} geparsed.")

    def generate_output_file(self, dirpath, filename):
        filename, filetype = filename.split(".")
        # generate the header and tail for the later file
        header = self.generate_header(self.output, filename)
        # create a new file in folder target with the name of the source file
        filename += ".ls"
        output_file = open(os.path.join(dirpath, filename), mode="w")
        for line in header:
            output_file.write(f"{line}\n")
        line_number = 1
        for line in self.output:
            if len(line) == 0:
                output_file.write(f"\t{line_number}:\n")
            else:
                output_file.write(f"\t{line_number}: {line};\n")
            line_number += 1
        for line in self.tail:
            output_file.write(f"{line}\n")
        output_file.close()

    def parse_file(self, filepath):
        self.output = self.get_output_header()
        self.tail = self.generate_tail()
        input_file = open(filepath, mode="r")
        for line in input_file:
            # check if comment or empty
            if line[0] == "#" or len(line) == 0 or line[:1] == "\n":
                continue
            else:
                self.parse_line(line)
        input_file.close()
        for line in self.get_output_tail():
            self.output.append(line)
        self.tail.append("/END")

    def parse_line(self, dataset):

        nr, x, y, z, rx, ry, rz, A, B, v, cnt, weld_state, job_nr, *_ = dataset.replace(" ", "").replace("\n", "").split(",")
        assert_border_xyz = 1000
        assert_border_rxryrz = 45
        assert_border_AB = 80 # fuers erste # TODO
        nr = int(nr)
        assert nr >= 0
        x = float(x)
        assert x <= assert_border_xyz and x >= -assert_border_xyz
        y = float(y)
        assert y <= assert_border_xyz and y >= -assert_border_xyz
        z = float(z)
        assert z <= assert_border_xyz and z >= 0
        rx = float(rx)
        assert rx <= assert_border_rxryrz and rx >= -assert_border_rxryrz   # TODO
        ry = float(ry)
        assert ry <= assert_border_rxryrz and ry >= -assert_border_rxryrz   # TODO
        rz = float(rz)
        assert rz <= assert_border_rxryrz and rz >= -assert_border_rxryrz   # TODO
        A = float(A)
        assert A <= assert_border_AB and A >= -assert_border_AB
        B = float(B)
        assert B <= assert_border_AB and B >= -assert_border_AB
        v = int(float(v))
        assert v > 0
        v_einheit = "cm/min"
        cnt = int(float(cnt))
        assert cnt >= 0
        weld_state = int(float(weld_state))
        assert weld_state in [0, 1]
        job_nr = int(job_nr)
        assert job_nr >= 0 and job_nr <= 255  # TODO

        # if self.textBrowser:
        #     self.textBrowser.append(f"Zeile {nr} wird geparsed.")
        # else:
        #     print(f"Zeile {nr} wird geparsed.")

        if weld_state == 0 and self.last_weld_state == 1:
            self.output.append(f"  Weld End[1,110.0,0.0s]")

        # hinzufuegen des punktes am ende des Programms

        #x, y, z, rx, ry, rz, A, B
        nr = nr + 1
        self.tail += [  f"P[{nr}]"+"{\n"
                        "   GP1:",
                        f"    UF : 1, UT : 3,		CONFIG : 'N U T, 0, 0, 0',",
                        f"    X =     {x:4.3f}  mm,	Y =     {y:4.3f}  mm,	Z =   {z:4.3f}  mm,",
                        f"    W =      {rx:4.3f} deg,	P =      {ry:4.3f} deg,	R =      {rz:4.3f} deg",
                        "   GP2:",
                        f"    UF : 1, UT : 3,	",
                        f"    J1=      {A:4.3f} deg,	J2=      {B:4.3f} deg",
                        "};"
                     ]



        # punkte muessen in abh von einem geteachten Startpunkt erfolgen
        # PR[2] = PR[1] + P[nr]
        self.output.append(f"  PR[2] = PR[1] + P[{nr}]")

        if cnt != self.last_cnt:  # TODO
            self.path_control_style = "FINE" if cnt == 0 else f"CNT{cnt}"
        if self.last_v is None:
            self.output.append(f"J PR[2] 15% {self.path_control_style}")
        else:
            if self.last_v != v:
                self.output.append(
                    f"L PR[2] {self.last_v} {v_einheit} {self.path_control_style} rampTo ({v} {v_einheit})")
            else:
                self.output.append(f"L PR[2] {self.last_v} {v_einheit} {self.path_control_style}")


        if job_nr != self.last_job_nr:
            self.output.append(f"  GO[2:EQ1 Job#/Syn#]={job_nr}") # TODO
        if weld_state == 1 and self. last_weld_state == 0:
            self.output.append(f"  Weld Start[1,110.0]")  # TODO was bedeuten die Zahlen

        self.last_x = x
        self.last_y = y
        self.last_z = z
        self.last_rx = rx
        self.last_ry = ry
        self.last_rz = rz
        self.last_A = A
        self.last_B = B
        self.last_cnt = cnt
        self.last_job_nr = job_nr
        self.last_v = v
        self.last_weld_state = weld_state

    def get_output_header(self):
        utool_number = 3
        template = [f"CALL HOME_ALL",
                    "",
                    f"UFRAME_NUM=1",
                    f"UTOOL_NUM={utool_number}",
                    f"COL GUARD ADJUST 110",
                    f"",
                    # f"TIMER[1]=RESET",
                    # f"TIMER[1]=START",
                    # f"",
                    # f"MESSAGE[Referenz teachen in PR 1]",
                    # f"MESSAGE[Weiter mit Shift + FWD]",
                    # f"PAUSE",
                    # f"CALL EDITAUF",
                    # f"",
                    "!  PR[1:TEACH]",
                    "  PR[2:NAECHSTER_PUNKT] = PR[1]",
                    f""]
        return template

    def get_output_tail(self):
        tail = ["",
                "  Weld End[1,110.0,0.0s]",
                # "  TIMER[1]=STOP",
                "  CALL HOME_ALL",
                "  CALL STICKOUT"] # TODO Stickout_cut?
        return tail

    def generate_header(self, output, filename):
        name = "PARSER"
        comment = "PARSER_OUPUT"
        actual_time = datetime.datetime.today().strftime("%H:%M:%S")
        actual_day = datetime.datetime.today().strftime("%d-%m-%y")
        lines_of_code = len(output)
        prog_size = lines_of_code * 24
        memory_size = prog_size + 512


        header = [  f"/ PROG  {name}",
                    f"/ ATTR",
                    f"OWNER = MNEDITOR;",
                    f'COMMENT = "{comment}";',
                    f"PROG_SIZE = {prog_size};",
                    f"CREATE = DATE {actual_day} TIME {actual_time};",
                    f"MODIFIED = DATE 00-00-00 TIME 00:00:00;",
                    f"FILE_NAME = {filename.upper()};",
                    f"VERSION = 01;",
                    f"LINE_COUNT = {lines_of_code};",
                    f"MEMORY_SIZE = {memory_size};",
                    f"PROTECT = READ_WRITE;",
                    f"TCD: STACK_SIZE = 0,",
                    f"     TASK_PRIORITY = 50,",
                    f"     TIME_SLICE = 0,",
                    f"     BUSY_LAMP_OFF = 0,",
                    f"     ABORT_REQUEST = 0,",
                    f"     PAUSE_REQUEST = 0;",
                    f"DEFAULT_GROUP = 1, 1, *, *, *;",
                    f"CONTROL_CODE = 00000000 00000000;",
                    f"/ APPL",
                    f"    ARC Welding Equipment: 1, *, *, *, *;",
                    f"MPAS;",
                    f"MPAS_NUM_PASSES: 0;",
                    f"MPAS_LAST_PASS: 0;",
                    f"MPAS_CURRENT_PASS: 0;",
                    f"MPAS_STATUS_PASS: 0;",
                    f"/ MN"]
        return header

    def generate_tail(self):
        tail = [ "/POS",
                 # 'P[6:"HOME"]{',
                 # "   GP1:",
                 # "    UF : 1, UT : 1,		CONFIG : 'N U T, 0, 0, 0',",
                 # "    X =     515.586  mm,	Y =     2.110  mm,	Z =   368.751  mm,",
                 # "    W =      .000 deg,	P =      .226 deg,	R =      .000 deg",
                 # "   GP2:",
                 # "    UF : 1, UT : 1,	",
                 # "    J1=      .000 deg,	J2=      .001 deg",
                 # "};",
                 # "/END"
                 ]
        return tail


if __name__ == "__main__":
    parser = Parser_Fanuc()
    parser.start()