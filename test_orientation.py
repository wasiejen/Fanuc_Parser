# test out the orientation_creation and show it in graphical for

from Parser import Parser




parser = Parser()
file = open("./src/test_orient.txt")
parser.load_data_from_txt(file)
file.close()
parser.generate_orientation_from_xyz_coords()
parser.show_graph()


