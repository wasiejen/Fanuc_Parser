import matplotlib.pyplot as plt
import os
# needed for 3d projection
from mpl_toolkits.mplot3d import axes3d
import numpy as np
from Neutonian_search import newtonian_search

import TXT2LS


class Parser(object):

    def __init__(self, gui_instance=None):
        self.file_path_gcode = None
        self.dir_path = None
        self.file_name = None
        self.dataset = []
        self.file_list = []
        self.gui = gui_instance
        self.debug = False

        if self.gui:
            self.txt2ls = TXT2LS.TXT2LS(self.gui.textBrowser_2)
        else:
            self.txt2ls = TXT2LS.TXT2LS()

    def loadFile(self, file_path=None):
        print(1, file_path)
        if "\\" in file_path:
            index = file_path.rindex("\\")
        else:
            index = file_path.rindex("/")
        self.file_name = file_path[index + 1:]
        self.dir_path = file_path[:index]

        self.dataset = []

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
                    self.gui.button_showGraph.setDisabled(False)
            # TODO: txt file loader
            self.file_list = [file_path]
            # self.load_data_from_txt(file)
            file.close()
            print(f"loaded data from file {self.file_name}")

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
                coordinate_set = [number_of_layer, None, None, None, 0, 0, 0, 0]

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
                        coordinate_set[7] = 1
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
                    self.dataset.append(coordinate_set)
                    number_of_coordinates += 1    

    def load_data_from_txt(self, file):
        dataset = []

        # ######
        # file_name, file_type = self.file_name.split(".")
        # file_name += ".txt"
        # file_path_txt = os.path.join(self.dir_path, file_name)
        # self.file_list = [file_path_txt]


        for line in file:
            if line == "" or line.startswith("#"):
                continue
            else:
                line = line.replace("\n", "")
                elements = line.split(", ")
                elements = [float(e) for e in elements]
                dataset.append(elements)
        self.dataset = dataset


    def generate_orientation_from_xyz_coords(self):
        MIN_ABSTAND = 1  # in mm
        NUMBER_OF_CLOSEST_POINTS = 1
        MAX_DISTANCE_CLOSEST_POINTS = 2  # in mm

        # self.dataset  # x,y,z,e
        layer_elements = []
        old_layer_elements = []
        elements_to_check = []
        old_z = None
        el = None
        prev_el = None

        new_dataset = []

        if self.gui is not None:
            self.gui.textBrowser_1.append(f"Beginne mit Ermittlung der Orientierungen")
        else:
            print(f"Beginne mit Ermittlung der Orientierungen")

        def draw_points_in_3d(elements_to_check):
            fig4 = plt.figure()
            ax = fig4.add_subplot(111, projection='3d')
            ax.set_xlabel("X")
            ax.set_ylabel("Y")
            for x, y, z in elements_to_check:
                ax.plot([x], [y], [z], "bo")
            plt.show()

        for dset in self.dataset:
            dset = list(dset)
            # print(dset)
            _, x, y, z, _, _, _, weld_en = dset
            # print(f"before: {dset}")
            element = (np.array((x, y, z)), weld_en)
            print(f"element: {element}")
            if old_z is None:
                old_z = z
            if z != old_z:
                old_z = z
                old_layer_elements = layer_elements
                layer_elements = []
                prev_el = None
            layer_elements.append(element)
            points_with_distances = []
            # suche auf allen Strecken der vorherigen Ebene nach den minimalen Abstaenden zum neuen Punkt
            for el in old_layer_elements:
                if prev_el is None:
                    prev_el = el
                else:
                    points_with_distances.append(newtonian_search(prev_el[0], el[0], element[0]))

            print(f"points with distances: {points_with_distances}")
            def check_distance(data):
                return data[1]

            sorted_distances = sorted(points_with_distances, key=check_distance)
            print(f"sorted distances: {sorted_distances}")

            # die nächsten punkte als bezug nehmen
            # und die orientierung anhand derer bestimmen
            # gewichtung für die n#chsten punkte erhöhen
            orientations = []
            counter = 0
            for temp_el, distance in sorted_distances:
                # TODO: einstellen des counters
                if 0 < distance <= MAX_DISTANCE_CLOSEST_POINTS and counter <= NUMBER_OF_CLOSEST_POINTS:
                    norm_orient = (element[0] - temp_el) / distance
                    orientations.append(norm_orient)
                    counter += 1
            print("Orientierungen: ", orientations)
            # einfaches bildes des durchschnittlichen orient vektors
            if len(orientations) > 0:
                
                res_orient = sum(orientations)
                res_orient = res_orient / np.linalg.norm(res_orient)
                print(f"RESULT-ORIENT: {res_orient}")

                # TODO: nochmal genau aufzeichnen!!!
                def angle_from_vertical(gegenkathete: float, ankathete: float):
                    if ankathete == 0:
                        ankathete = 0.001  # devide bx 0 is not allowed
                    return np.arctan(gegenkathete / ankathete) / np.pi * 180

                # umrechnen in gradabweichung von der senkrechten

                x, y, z = res_orient
                # um x - rx
                dset[4] = round(angle_from_vertical(y, z), 3)
                # um y - ry
                dset[5] = round(angle_from_vertical(x, z), 3)
                # # um z - rz
                # # TODO: WIRD Z ueberhaupt benoetigt???
                #hyp = np.sqrt(y*y+x*x)
                #dset[6] = np.arcsin(y/hyp) / np.pi * 180
                # dset[6] = angle_from_vertical(y, x)

                # dset[4] = x
                # dset[5] = y

                # TODO: test
                dset[6] = z

            new_dataset.append(dset)
            # print(f"after: {dset}")

        self.dataset = new_dataset

        if self.gui is not None:
            self.gui.textBrowser_1.append(f"Orientierungen berechnet")
        else:
            print(f"Orientierungen berechnet")

    def generate_txt_file_from_dataset(self, target_points_per_file: int = 0):

        if self.file_path_gcode is not None:

            file_counter = 0
            point_counter = 0
            self.file_list = []
            old_layer_number = 0

            output_file, output = self.create_output_file(file_counter)
            for data_set in self.dataset:
                layer_number = data_set[0]
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
            self.txt2ls.set_path(path)
            self.txt2ls.start()
        # self.file_list = []

    def show_graph(self):
        fig = plt.figure()
        # to know the 3d projection the import
        # "from mpl_toolkits.mplot3d import axes3d" is needed
        ax = fig.add_subplot(111, projection='3d')

        # load some test data for demonstration and plot a wireframe
        # X, Y, Z = axes3d.get_test_data(0.1)
        # nr, x, y, z, rx, ry, rz, A, B, v, cnt, weld_state, job_nr, *_ = self.dataset
        nr, x, y, z, rx, ry, rz, *_ = zip(*self.dataset)
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

        fig3 = plt.figure()
        ax = fig3.add_subplot(111, projection='3d')
        ax.set_xlabel("X")
        ax.set_ylabel("Y")
        plt.plot(x, y, z, "bo")

        # dataset = [np.array(el) for el in self.dataset]
        # np.arctan(gegenkathete / ankathete) / np.pi * 90
        # nr, x, y, z, rx, ry, rz = dataset
        xrx = np.array(x)+np.tan(np.array(ry)/180*np.pi) * rz
        yry = np.array(y)+np.tan(np.array(rx)/180*np.pi) * rz
        zrz = np.array(z)+np.array(rz)#/90*np.pi

        orient_x = zip(x, xrx)
        orient_y = zip(y, yry)
        orient_z = zip(z, zrz)
        orient_res = zip(orient_x, orient_y, orient_z)
        for x, y, z in orient_res:
            plt.plot(x, y, z, "r-")

        plt.show()

    def select_parser_target(self, target):
        self.txt2ls.select_target(target)


if __name__ == '__main__':
    parser = Parser()
    parser.loadFile("D:/DESKTOP/PYTHON/A02_GCODE_PARSER/src/retrac_190320.gcode")
    # parser.loadFile("D:\\DESKTOP\\PYTHON\\A02_GCODE_PARSER\\src\\hosenrohr_oVersatz.gcode")
    parser.show_graph()
    parser.generate_txt_file_from_dataset()
    parser.generate_ls_file_from_dataset()
