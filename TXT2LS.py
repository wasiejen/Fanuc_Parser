import os
import datetime
import sys


class Parser_Fanuc(object):

    def __init__(self, filepath: object = None, textBrowser: object = None) -> object:
        self.filepath = filepath
        if self.filepath is not None:
            index = self.filepath.rindex("/")
            self.filename = self.filepath[index + 1:]
            self.dirpath = self.filepath[:index]
            # print(self. dirpath, self.filename)
        self.textBrowser = textBrowser
        self.src = os.path.join(os.curdir, "src\\")
        self.target = os.path.join(os.curdir, "target\\")
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
        # self.last_weld_state = None
        # self.last_job_nr = None
        self.output = None
        self.tail = None

    def start(self):
        # parse specific file or else parse entire directory "src"
        if self.filepath is not None:
            self.parse_file(self.filepath)
            self.generate_output_file(self.dirpath, self.filename)
            if self.textBrowser:
                self.textBrowser.append(f"File {self.filename} erfolgreich nach {self.dirpath} geparsed.")
            else:
                print(f"File {self.filename} erfolgreich nach {self.dirpath} geparsed.")
        # else:
        #     for (dirpath, dirname, filenames) in os.walk(self.src):
        #         for filename in filenames:
        #             self.parse_file(os.path.join(dirpath, filename))
        #             self.generate_output_file(self.target, filename)
        #             if self.textBrowser is not None:
        #                 self.textBrowser.append(f"File {filename} erfolgreich nach {self.target} geparsed.")
        #             else:
        #                 print(f"File {filename} erfolgreich nach {self.target} geparsed.")

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
                # output_file.write(f"\t{line_number}:\n")
                output_file.write(f"")

            else:
                output_file.write(f"   1:{line};\n")
            line_number += 1
        for line in self.tail:
            output_file.write(f"{line}\n")
        output_file.close()

    def parse_file(self, filepath):
        # generate list with header lines
        self.output = self.get_main_header()

        input_file = open(filepath, mode="r")
        for line in input_file:
            # check if comment or empty
            if line[0] == "#" or len(line) == 0 or line[:1] == "\n":
                continue
            else:
                self.parse_line(line)
        input_file.close()

        # adding the lines to the output file
        for line in self.get_output_tail():
            self.output.append(line)

        self.tail = self.generate_tail()

    def get_main_header(self):
        utool_number = 3
        template = [f"  CALL HOME_ALL",
                    "",
                    f"  UFRAME_NUM = 1",
                    f"  UTOOL_NUM = {utool_number}",
                    f"  COL GUARD ADJUST 150",
                    f"",
                    f"  PR[91] = PR[90]"]
        return template

    def parse_line(self, dataset):
        print(dataset)
        nr, x, y, z, *_ = dataset.replace(" ", "").replace("\n", "").split(",")
        assert_border_xyz = 1000
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

        if x != self.last_x:
            self.output.append(f"  PR[GP1:91,1] = PR[GP1:90,1] + {x:4.3f}")
        if y != self.last_y:
            self.output.append(f"  PR[GP1:91,2] = PR[GP1:90,2] + {y:4.3f}")
        if z != self.last_z:
            self.output.append(f"  PR[GP1:91,3] = PR[GP1:90,3] + {z:4.3f}")

        self.output.append(f"L PR[91] 10mm/sec FINE")

        self.last_x = x
        self.last_y = y
        self.last_z = z

    def get_output_tail(self):
        tail = ["",
                "  CALL HOME_ALL",
                ]
        return tail

    def generate_header(self, output, filename):
        '''generation of minimal header with '''
        file_name, file_type = self.filename.split(".")
        name = f"{file_name}"
        actual_time = datetime.datetime.today().strftime("%H:%M:%S")
        actual_day = datetime.datetime.today().strftime("%y-%m-%d")
        comment = f"{actual_day} {actual_time}"

        header = [  f"/PROG  {name}",
                    f"/ATTR",
                    f'COMMENT\t= "{comment}";',
                    f"PROG_SIZE\t= 0;",
                    f"DEFAULT_GROUP\t= 1, 1, *, *, *;",
                    f"/APPL",
                    f"    ARC Welding Equipment: 1, *, *, *, *;",
                    f"/MN"
                    ]
        return header

    def generate_tail(self):
        tail = [ "/POS",
                 "/END"
                 ]
        return tail


if __name__ == "__main__":
    parser = Parser_Fanuc()
    parser.start()