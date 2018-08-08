import sys
import PyQt5
from PyQt5 import QtWidgets, uic

class GUI(QtWidgets.QMainWindow):

    def __init__(self):
        super(GUI, self).__init__()
        uic.loadUi('gui.ui', self)
        file = open("./ui_gui.py", "w")
        PyQt5.uic.compileUi("gui.ui", file)
        self.show()

if __name__ == '__main__':
    app = QtWidgets.QApplication(sys.argv)
    window = GUI()
    sys.exit(app.exec_())

