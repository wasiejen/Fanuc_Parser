import sys

import os
from PyQt5 import QtWidgets, uic
from ui_gui import Ui_MainWindow
import matplotlib.pyplot as plt
import re
from mpl_toolkits.mplot3d import axes3d

# from pars_fanuc_v02 import Parser_Fanuc

class GUI(QtWidgets.QMainWindow, Ui_MainWindow):

    def __init__(self):
        super(GUI, self).__init__()
        # uic.loadUi('gui.ui', self)
        self.setupUi(self)
        self.filepath = None
        self.dataset = None
        self.button_loadFile.clicked.connect(self.loadFile)
        self.button_showGraph.clicked.connect(self.showGraph)
        self.button_parseFile.clicked.connect(self.parseFile)
        # self.lineEdit
        # self.textBrowser
        self.show()

    def loadFile(self):
        self.dataset = []
        for i in range(6):
            self.dataset.append([])
        self.filepath, *_ = QtWidgets.QFileDialog.getOpenFileName()
        # print(self.filepath)
        if self.filepath is not None:
            self.lineEdit.setText(self.filepath)
            self.loadData()

    def showGraph(self):
        fig = plt.figure()
        ax = fig.add_subplot(111, projection='3d')

        # load some test data for demonstration and plot a wireframe
        # X, Y, Z = axes3d.get_test_data(0.1)
        # nr, x, y, z, rx, ry, rz, A, B, v, cnt, weld_state, job_nr, *_ = self.dataset
        nr, x, y, z, *_ = self.dataset
        ax.plot(x, y, z)
        ax.set_xlabel("X")
        ax.set_ylabel("Y")

        fig2 = plt.figure()

        fig2.add_subplot(221)
        plt.plot(range(len(x)), x)
        plt.xlabel("point number")
        plt.ylabel("x")

        fig2.add_subplot(222)
        plt.plot(range(len(y)), y)
        plt.xlabel("point number")
        plt.ylabel("y")

        fig2.add_subplot(223)
        plt.plot(range(len(z)), z)
        plt.xlabel("point number")
        plt.ylabel("z")

        fig2.add_subplot(224)
        plt.plot(x, y)
        plt.xlabel("y")
        plt.ylabel("y")

        plt.show()

    def loadData(self):
        try:
            file = open(self.filepath, "r")
        except FileNotFoundError:
            print("File not Found Error")
            return

        number_of_coordinates = 0
        number_of_layer = 0
        static_z_coordinate = 0


        for line in file:

            if line == "" or line.startswith("#"):
                continue

            # print(line)

            if line.startswith("; layer"):
                # ; layer 1, Z = 0.9
                number_of_layer += 1

                # remove trailing linebreak
                line = line.replace("\n", "")

                # remove spaces - not working for a reason
                # line.replace(" ", "")
                # line.strip()
                # print(line)


                # split at comma
                elements = line.split(",")
                print(elements)
                # search for element with Z at start
                for el in elements:
                    if el.startswith(" Z"):
                        # remove first 2 signs
                        el = el[5:]
                        # convert to number
                        # save in static_z_coordinate
                        static_z_coordinate = float(el)
                        print(el)

            # G1 ist CGODE for new Koordinate
            elif line.startswith("G1"):
                # saves the actual number of the new coordinatepoint
                coordinate_set = [number_of_layer, None, None, None]

                line = line.replace("\n", "")
                elements = line.split(" ")

                for coordinate in elements:
                    if coordinate.startswith("X"):
                        coordinate_set[1] = float(coordinate[1:])
                    elif coordinate.startswith("Y"):
                        coordinate_set[2] = float(coordinate[1:])
                    elif coordinate.startswith("Z"):
                        coordinate_set[3] = float(coordinate[1:])
                    else:
                        # if no Z coordinate then uses static_z coordinate
                        coordinate_set[3] = float(static_z_coordinate)
                        continue

                # checks if X, Y and Z coordinates are present
                coordinate_complete = True
                for coordinate in coordinate_set:
                    if coordinate is None:
                        coordinate_complete = False

                # save coordinate in dataset and increase coordinate number
                if coordinate_complete:
                    for index, element in enumerate(coordinate_set):
                        self.dataset[index].append(element)
                    number_of_coordinates += 1

        file.close()

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