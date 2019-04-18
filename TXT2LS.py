import os
import datetime
# import sys

from TXT2LS_Gutroff import Gutroff
from TXT2LS_Kjellberg_Laser import Kjellberg_Laser
from TXT2LS_Kjellberg_Pulver import Kjellberg_Pulver


class TXT2LS(object):

    def __init__(self, textBrowser: object = None) -> object:

        self.textBrowser = textBrowser
        self.src = os.path.join(os.curdir, "src")
        self.target = os.path.join(os.curdir, "target")

        # important for transfer to
        # self.state_list = [self.last_x, self.last_y, self.last_z,
        #                    self.last_weld_state, self.last_nr]

        self.poss_targets = {"Gutroff": Gutroff(),
                             "Kjellberg Laser": Kjellberg_Laser(),
                             "Kjellberg Pulver": Kjellberg_Pulver()}
        self.target = self.poss_targets["Gutroff"]

    def select_target(self, chosen_target):
        self.target = self.poss_targets[chosen_target]

    def set_path(self, filepath: object = None):
        self.filepath = filepath
        print(filepath)
        if self.filepath is not None:
            if "\\" in self.filepath:
                index = self.filepath.rindex("\\")
            else:
                index = self.filepath.rindex("/")

            self.filename = self.filepath[index + 1:]
            self.dirpath = self.filepath[:index]

            file_name, file_type = self.filename.split(".")
            # if "\\" in self.filepath:
            #     index2 = self.filepath.rindex("\\")
            #     self.filename = self.filename[index2 + 1:]
            self.name = f"{file_name}"
            # print(self. dirpath, self.filename)

    def start(self):
        # parse specific file or else parse entire directory "src"
        if self.filepath is not None:
            self.parse_file(self.filepath)
            self.generate_output_file(self.dirpath, self.filename)
            if self.textBrowser:
                self.textBrowser.append(
                    f"File {self.filename} erfolgreich nach {self.dirpath} geparsed.")
            else:
                print(
                    f"File {self.filename} erfolgreich nach {self.dirpath} geparsed.")
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

        lines = []
        input_file = open(filepath, mode="r")
        [lines.append(line) for line in input_file]
        input_file.close()

        flag = "start"
        for line in lines[:-1]:
            # check if comment or empty
            if line[0] == "#" or len(line) == 0 or line[:1] == "\n":
                continue
            else:
                self.parse_line(line, flag)
                if flag == "start":
                    flag = "welding"
        # parse the last line
        flag = "stop"
        self.parse_line(lines[-1], flag)

        # adding the lines to the output file
        for line in self.get_output_tail():
            self.output.append(line)

        self.tail = self.generate_tail()

    def get_main_header(self):
        return self.target.get_main_header()

    def parse_line(self, dataset, flag):
        self.target.parse_line(dataset, flag, self.output)

    def get_output_tail(self):
        tail = ["",
                "  CALL HOME_ALL",
                ]
        return tail

    def generate_header(self, output, filename):
        '''generation of minimal header with '''
        actual_time = datetime.datetime.today().strftime("%H:%M:%S")
        actual_day = datetime.datetime.today().strftime("%y-%m-%d")
        comment = f"{actual_day} {actual_time}"

        header = [f"/PROG  {self.name}",
                  f"/ATTR",
                  f'COMMENT\t= "{comment}";',
                  f"PROG_SIZE\t= 0;",
                  f"DEFAULT_GROUP\t= 1, *, *, *, *;",
                  f"/APPL",
                  f"    ARC Welding Equipment: 1, *, *, *, *;",
                  f"/MN"
                  ]
        return header

    def generate_tail(self):
        tail = ["/POS",
                "/END"
                ]
        return tail


if __name__ == "__main__":
    parser = TXT2LS()
    parser.start()
