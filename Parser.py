import matplotlib.pyplot as plt

class Parser(object):

    def __init__(self):
        self.file_path = None
        self.dataset = []

    def loadFile(self, file_path=None):
        self.file_path = file_path
        self.dataset = []
        [self.dataset.append([]) for i in range(6)]
        if self.file_path is not None:
            self.loadData()

    def loadData(self):
        try:
            file = open(self.file_path, "r")
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

        # return self.filepath

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

if __name__ == '__main__':
    parser = Parser();
    parser.loadFile("D:/DESKTOP/PYTHON/A02_GCODE_PARSER/src/bauteil_aufmass.gcode")