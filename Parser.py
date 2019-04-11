import matplotlib.pyplot as plt
import os
# needed for 3d projection
from mpl_toolkits.mplot3d import axes3d

import TXT2LS


class Parser(object):

    def __init__(self, gui_instance=None):
        self.file_path_gcode = None
        self.dir_path = None
        self.file_name = None
        self.dataset = []
        self.file_list = []
        self.gui = gui_instance

    def loadFile(self, file_path=None):
        print(1, file_path)
        if "\\" in file_path:
            index = file_path.rindex("\\")
        else:
            index = file_path.rindex("/")
        self.file_name = file_path[index + 1:]
        self.dir_path = file_path[:index]

        self.dataset = []
        [self.dataset.append([]) for i in range(6)]

        if file_path is not None:

            try:
                file = open(file_path, "r")
            except FileNotFoundError:
                print("File not Found Error")
                return

            file_type = file_path.split(".")[-1].lower()

            if file_type == "gcode":
                print("gcode found")
                self.file_path_gcode = file_path
                if self.gui is not None:
                    self.gui.textBrowser_1.append(f"loading data from file {self.file_name}")
                    self.gui.button_parse1.setDisabled(False)
                    self.gui.button_parse2.setDisabled(True)
                    self.gui.button_showGraph.setDisabled(False)
                self.load_data_from_gcode(file)

            elif file_type == "txt":
                print("txt found")
                self.file_path_txt = file_path
                if self.gui is not None:
                    self.gui.textBrowser_2.append(f"loading data from file {self.file_name}")
                    self.gui.button_parse1.setDisabled(True)
                    self.gui.button_parse2.setDisabled(False)
                    self.gui.button_showGraph.setDisabled(True)
                # TODO: txt file loader
                # self.load_data_from_txt(file)

            print(f"loading data from file {self.file_name}")

    def load_data_from_gcode(self, file):
        number_of_coordinates = 0
        number_of_layer = 0
        static_z_coordinate = 0

        for line in file:

            if line == "" or line.startswith("#"):
                continue

            if line.startswith("; layer"):
                # ; layer 1, Z = 0.9
                number_of_layer += 1

                # remove trailing linebreak
                line = line.replace("\n", "")

                # split at comma
                elements = line.split(",")
                if self.gui is not None:
                    self.gui.textBrowser_1.append(f"{number_of_layer} - {elements} \t at coordinate {number_of_coordinates}")
                else:
                    print(f"{number_of_layer} - {elements} \t at coordinate {number_of_coordinates}")
                # search for element with Z at start
                for el in elements:
                    if el.startswith(" Z"):
                        # remove first 2 signs
                        el = el[5:]
                        # convert to number
                        # save in static_z_coordinate
                        static_z_coordinate = float(el)

            # G1 ist CGODE for new Koordinate
            elif line.startswith("G1"):
                # saves the actual number of the new coordinatepoint
                coordinate_set = [number_of_layer, None, None, None, 0]

                line = line.replace("\n", "")
                elements = line.split(" ")

                for coordinate in elements:
                    if coordinate.startswith("X"):
                        coordinate_set[1] = float(coordinate[1:])
                    elif coordinate.startswith("Y"):
                        coordinate_set[2] = float(coordinate[1:])
                    elif coordinate.startswith("Z"):
                        coordinate_set[3] = float(coordinate[1:])
                    elif coordinate.startswith("E"):
                        coordinate_set[4] = 1
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

    def load_data_from_txt(self, file):
        pass

    def generate_txt_file_from_dataset(self, target_points_per_file: int = 0):
               
        if self.file_path_gcode is not None:

            ds = self.dataset

            yaw = 0
            pitch = 0
            roll = 0
            #weld_en = 0

            file_counter = 0
            point_counter = 0
            #self.file_list = []
            old_layer_number = 0

            output_file, output = self.create_output_file(file_counter)

            for layer_number, x, y, z, weld_en in zip(ds[0], ds[1], ds[2], ds[3], ds[4]):
                data_set = [layer_number, x, y, z, yaw, pitch, roll, weld_en]
                data_set_strings = [str(element) for element in data_set]
                line = ", ".join(data_set_strings)
                point_counter += 1

                if layer_number != old_layer_number:
                    old_layer_number = layer_number
                    # if taget points is not 0, then split the points in multiple files with
                    # AT LEAST the target point count
                    if (point_counter > target_points_per_file) & (target_points_per_file != 0):
                        self.write_txt_file(output_file, output)

                        # create new file and output for it
                        file_counter += 1
                        point_counter = 0
                        output_file, output = self.create_output_file(file_counter)
                output.append(line)

            # write last file
            self.write_txt_file(output_file, output)

    def create_output_file(self, split_number=0):
        print("create output file")
        file_name, file_type = self.file_name.split(".")
        if split_number != 0:
            file_name += str(split_number)
        file_name += ".txt"
        file_path_txt = os.path.join(self.dir_path, file_name)
        output_file = open(file_path_txt, mode="w")
        output = ["##No.  X  Y  Z  Yaw  Pitch  Roll  Weld_En"]
        # save paths to the generated txt files
        self.file_list.append(file_path_txt)
        return output_file, output

    def write_txt_file(self, output_file, output):
        print("write txt file")
        for line in output:
            output_file.write(f"{line}\n")
        output_file.close()
        if self.gui is not None:
            self.gui.textBrowser_1.append(f"file: {self.file_name} successfully parsed to {output_file}")
        else:
            print(f"file: {self.file_name} successfully parsed to {output_file}")


        
                

    def generate_ls_file_from_dataset(self):
        
        for path in self.file_list:

            if self.gui:
                self.txt2ls = TXT2LS.Parser_Fanuc(path, self.gui.textBrowser_2)
            else:
                self.txt2ls = TXT2LS.Parser_Fanuc(path)
            self.txt2ls.start()
        #self.file_list = []


    def show_graph(self):
        fig = plt.figure()
        # to know the 3d projection the import
        # "from mpl_toolkits.mplot3d import axes3d" is needed
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
        plt.xlabel("x")
        plt.ylabel("y")

        plt.show()


if __name__ == '__main__':
    parser = Parser()
    parser.loadFile("D:/DESKTOP/PYTHON/A02_GCODE_PARSER/src/retrac_190320.gcode")
    # parser.loadFile("D:\\DESKTOP\\PYTHON\\A02_GCODE_PARSER\\src\\hosenrohr_oVersatz.gcode")
    parser.show_graph()
    parser.generate_txt_file_from_dataset()
    parser.generate_ls_file_from_dataset()
