import sys
from PyQt5 import uic, QtWidgets, QtGui

import Parser


class GUI(QtWidgets.QMainWindow):

    def __init__(self):
        print("test")
        super(GUI, self).__init__()
        uic.loadUi("gui.ui", self)
        self.show()

        # Button BINDING
        self.button_loadFile.clicked.connect(self.load_file)
        # self.button_showGraph.clicked.connect(self.showGraph)
        # self.button_parseFile.clicked.connect(self.parseFile)

        # create the parser instance for later usage
        self.parser = Parser.Parser()


    def load_file(self):
        file_path, *_ = QtWidgets.QFileDialog.getOpenFileName()
        print(file_path)
        self.lineEdit.setText(file_path)
        self.parser.loadFile(file_path=file_path)


if __name__ == "__main__":
    app = QtWidgets.QApplication(sys.argv)
    window = GUI()
    sys.exit(app.exec_())