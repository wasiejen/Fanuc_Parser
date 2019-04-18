import sys
from PyQt5 import QtWidgets  # , uic, QtGui
from ui_gui import Ui_MainWindow

import Parser
# import TXT2LS


class GUI(QtWidgets.QMainWindow, Ui_MainWindow):

    def __init__(self):
        super(GUI, self).__init__()
        # uic.loadUi("gui.ui", self)
        self.setupUi(self)
        self.show()

        # Button BINDING
        self.button_loadFile.clicked.connect(self.load_file)
        self.button_showGraph.clicked.connect(self.show_graph)
        self.button_parse1.clicked.connect(self.generate_txt_file)
        self.button_parse2.clicked.connect(self.generate_ls_file)
        self.comboBox.activated[str].connect(self.select_parser_target)

        # create the parser instance for later usage
        self.parser = Parser.Parser(self)

        # create the fanuc_parser instance for later usage
        # self.fanuc_parser = TXT2LS.Parser_Fanuc()

        # setting the start states of buttons
        self.button_parse1.setDisabled(True)
        self.button_parse2.setDisabled(True)
        self.button_showGraph.setDisabled(True)
        self.button_parseAll.setDisabled(True)

        self.comboBox.setCurrentIndex(0)

    def load_file(self):
        file_path, *_ = QtWidgets.QFileDialog.getOpenFileName()
        # print(file_path)
        self.lineEdit.setText(file_path)
        self.parser.loadFile(file_path=file_path)

    def show_graph(self):
        self.parser.show_graph()

    def generate_txt_file(self):
        target_points_per_file = int(self.lineEdit2.text())
        self.parser.generate_txt_file_from_dataset(target_points_per_file)
        self.button_parse2.setDisabled(False)

    def generate_ls_file(self):
        self.parser.generate_ls_file_from_dataset()

    def select_parser_target(self, text):
        self.parser.select_parser_target(text)

if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    window = GUI()
    sys.exit(app.exec_())
