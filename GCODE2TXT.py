import sys

import os
from PyQt5 import QtWidgets, uic
from ui_gui import Ui_MainWindow
import matplotlib.pyplot as plt
import re
from mpl_toolkits.mplot3d import axes3d

# from pars_fanuc_v02 import Parser_Fanuc

class GCODE2TXT_Parser(object):







    def parseFile(self):

        if self.filepath is not None:
            index = self.filepath.rindex("/")
            self.filename = self.filepath[index + 1:]
            self.dirpath = self.filepath[:index]

            self.generate_output_file(self.dirpath, self.filename)

    def generate_output_file(self, dirpath, filename):
        filename, filetype = filename.split(".")
        # create a new file in folder target with the name of the source file
        filename += ".txt"
        output_file = open(os.path.join(dirpath, filename), mode="w")

        output = ["No.  X  Y  Z  Yaw  Pitch  Roll  Weld_En"]

        ds = self.dataset

        yaw = 0
        pitch = 0
        roll = 1
        weld_en = 1

        for no, x, y, z in zip(ds[0], ds[1], ds[2], ds[3]):

            data_set = [no, x, y, z, yaw, pitch, roll, weld_en]
            data_set_strings = [str(element) for element in data_set]

            line = " ".join(data_set_strings)
            output.append(line)

        for line in output:
            output_file.write(f"{line}\n")
        output_file.close()

        self.textBrowser.append(f"file: {self.filename} successfully parsed to {filename}")


if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    window = GUI()
    sys.exit(app.exec_())