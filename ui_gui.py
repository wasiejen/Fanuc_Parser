# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'gui.ui'
#
# Created by: PyQt5 UI code generator 5.6
#
# WARNING! All changes made in this file will be lost!

from PyQt5 import QtCore, QtWidgets  # QtGui,


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(800, 600)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(MainWindow.sizePolicy().hasHeightForWidth())
        MainWindow.setSizePolicy(sizePolicy)
        MainWindow.setMinimumSize(QtCore.QSize(800, 600))
        MainWindow.setMaximumSize(QtCore.QSize(800, 641))
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(0)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.centralwidget.sizePolicy().hasHeightForWidth())
        self.centralwidget.setSizePolicy(sizePolicy)
        self.centralwidget.setMinimumSize(QtCore.QSize(800, 600))
        self.centralwidget.setMaximumSize(QtCore.QSize(800, 559))
        self.centralwidget.setObjectName("centralwidget")
        self.verticalLayoutWidget_3 = QtWidgets.QWidget(self.centralwidget)
        self.verticalLayoutWidget_3.setGeometry(QtCore.QRect(10, 10, 781, 561))
        self.verticalLayoutWidget_3.setObjectName("verticalLayoutWidget_3")
        self.verticalLayout_3 = QtWidgets.QVBoxLayout(self.verticalLayoutWidget_3)
        self.verticalLayout_3.setSizeConstraint(QtWidgets.QLayout.SetMinimumSize)
        self.verticalLayout_3.setContentsMargins(0, 0, 0, 0)
        self.verticalLayout_3.setSpacing(3)
        self.verticalLayout_3.setObjectName("verticalLayout_3")
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.label = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label.setObjectName("label")
        self.horizontalLayout.addWidget(self.label)
        self.lineEdit = QtWidgets.QLineEdit(self.verticalLayoutWidget_3)
        self.lineEdit.setObjectName("lineEdit")
        self.horizontalLayout.addWidget(self.lineEdit)
        self.button_loadFile = QtWidgets.QPushButton(self.verticalLayoutWidget_3)
        sizePolicy = QtWidgets.QSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.Fixed)
        sizePolicy.setHorizontalStretch(81)
        sizePolicy.setVerticalStretch(0)
        sizePolicy.setHeightForWidth(self.button_loadFile.sizePolicy().hasHeightForWidth())
        self.button_loadFile.setSizePolicy(sizePolicy)
        self.button_loadFile.setMinimumSize(QtCore.QSize(81, 0))
        self.button_loadFile.setObjectName("button_loadFile")
        self.horizontalLayout.addWidget(self.button_loadFile)
        self.verticalLayout_3.addLayout(self.horizontalLayout)
        self.line_3 = QtWidgets.QFrame(self.verticalLayoutWidget_3)
        self.line_3.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_3.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_3.setObjectName("line_3")
        self.verticalLayout_3.addWidget(self.line_3)
        self.horizontalLayout_4 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_4.setSpacing(3)
        self.horizontalLayout_4.setObjectName("horizontalLayout_4")
        self.verticalLayout = QtWidgets.QVBoxLayout()
        self.verticalLayout.setContentsMargins(-1, 0, 0, 0)
        self.verticalLayout.setSpacing(3)
        self.verticalLayout.setObjectName("verticalLayout")
        self.horizontalLayout_2 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_2.setObjectName("horizontalLayout_2")
        self.label_2 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_2.setObjectName("label_2")
        self.horizontalLayout_2.addWidget(self.label_2)

        self.label_7 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_7.setObjectName("label_7")
        self.horizontalLayout_2.addWidget(self.label_7)

        self.lineEdit2 = QtWidgets.QLineEdit(self.verticalLayoutWidget_3)
        self.lineEdit2.setObjectName("lineEdit_Punkte")
        self.horizontalLayout_2.addWidget(self.lineEdit2)

        spacerItem = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_2.addItem(spacerItem)
        self.button_parse1 = QtWidgets.QPushButton(self.verticalLayoutWidget_3)
        self.button_parse1.setObjectName("button_parse1")
        self.horizontalLayout_2.addWidget(self.button_parse1)
        self.verticalLayout.addLayout(self.horizontalLayout_2)
        self.textBrowser_1 = QtWidgets.QTextBrowser(self.verticalLayoutWidget_3)
        self.textBrowser_1.setObjectName("textBrowser_1")
        self.verticalLayout.addWidget(self.textBrowser_1)
        self.line_4 = QtWidgets.QFrame(self.verticalLayoutWidget_3)
        self.line_4.setFrameShape(QtWidgets.QFrame.HLine)
        self.line_4.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_4.setObjectName("line_4")
        self.verticalLayout.addWidget(self.line_4)
        self.verticalLayout_2 = QtWidgets.QVBoxLayout()
        self.verticalLayout_2.setObjectName("verticalLayout_2")
        self.horizontalLayout_3 = QtWidgets.QHBoxLayout()
        self.horizontalLayout_3.setObjectName("horizontalLayout_3")
        self.label_3 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_3.setObjectName("label_3")
        self.horizontalLayout_3.addWidget(self.label_3)



        spacerItem1 = QtWidgets.QSpacerItem(40, 20, QtWidgets.QSizePolicy.Expanding, QtWidgets.QSizePolicy.Minimum)
        self.horizontalLayout_3.addItem(spacerItem1)
        self.button_parse2 = QtWidgets.QPushButton(self.verticalLayoutWidget_3)
        self.button_parse2.setObjectName("button_parse2")
        self.horizontalLayout_3.addWidget(self.button_parse2)
        self.verticalLayout_2.addLayout(self.horizontalLayout_3)
        self.textBrowser_2 = QtWidgets.QTextBrowser(self.verticalLayoutWidget_3)
        self.textBrowser_2.setObjectName("textBrowser_2")
        self.verticalLayout_2.addWidget(self.textBrowser_2)
        self.verticalLayout.addLayout(self.verticalLayout_2)
        self.horizontalLayout_4.addLayout(self.verticalLayout)
        self.line_2 = QtWidgets.QFrame(self.verticalLayoutWidget_3)
        self.line_2.setFrameShape(QtWidgets.QFrame.VLine)
        self.line_2.setFrameShadow(QtWidgets.QFrame.Sunken)
        self.line_2.setObjectName("line_2")
        self.horizontalLayout_4.addWidget(self.line_2)
        self.verticalLayout_5 = QtWidgets.QVBoxLayout()
        self.verticalLayout_5.setObjectName("verticalLayout_5")
        self.label_5 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_5.setObjectName("label_5")
        self.verticalLayout_5.addWidget(self.label_5)
        self.button_showGraph = QtWidgets.QPushButton(self.verticalLayoutWidget_3)
        self.button_showGraph.setMinimumSize(QtCore.QSize(81, 0))
        self.button_showGraph.setObjectName("button_showGraph")
        self.verticalLayout_5.addWidget(self.button_showGraph)
        self.button_parseAll = QtWidgets.QPushButton(self.verticalLayoutWidget_3)
        self.button_parseAll.setMinimumSize(QtCore.QSize(81, 0))
        self.button_parseAll.setObjectName("button_parseAll")
        self.verticalLayout_5.addWidget(self.button_parseAll)

        self.button_add_orientation = QtWidgets.QPushButton(self.verticalLayoutWidget_3)
        self.button_add_orientation.setMinimumSize(QtCore.QSize(81, 0))
        self.button_add_orientation.setObjectName("button_add_orientation")
        self.verticalLayout_5.addWidget(self.button_add_orientation)

        self.label_10 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_10.setObjectName("label_10")
        self.verticalLayout_5.addWidget(self.label_10)

        self.comboBox = QtWidgets.QComboBox(self)
        self.comboBox.addItem("Gutroff")
        self.comboBox.addItem("Kjellberg Laser")
        self.comboBox.addItem("Kjellberg Pulver")
        # self.comboBox.addItem("")
        # self.comboBox.addItem("")
        # self.comboBox.addItem("")
        self.verticalLayout_5.addWidget(self.comboBox)
        

        spacerItem2 = QtWidgets.QSpacerItem(20, 40, QtWidgets.QSizePolicy.Minimum, QtWidgets.QSizePolicy.Expanding)
        self.verticalLayout_5.addItem(spacerItem2)
        self.label_4 = QtWidgets.QLabel(self.verticalLayoutWidget_3)
        self.label_4.setAlignment(QtCore.Qt.AlignRight|QtCore.Qt.AlignTrailing|QtCore.Qt.AlignVCenter)
        self.label_4.setObjectName("label_4")
        self.verticalLayout_5.addWidget(self.label_4)
        self.horizontalLayout_4.addLayout(self.verticalLayout_5)
        self.verticalLayout_3.addLayout(self.horizontalLayout_4)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 800, 21))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "Parser GCODE -> TXT -> LS gui_v03_180802"))
        self.label.setText(_translate("MainWindow", "File"))
        self.button_loadFile.setText(_translate("MainWindow", "load File"))
        self.label_2.setText(_translate("MainWindow", "GCODE -> TXT"))
        self.button_parse1.setText(_translate("MainWindow", "parse GCODE -> TXT"))
        self.label_3.setText(_translate("MainWindow", "TXT -> LS"))
        self.label_7.setText(_translate("MainWindow", "  |  Punktebegrenzung: "))
        self.label_10.setText(_translate("MainWindow", "set Target:"))
        self.lineEdit2.setText(_translate("MainWindow", "3000"))
        self.button_parse2.setText(_translate("MainWindow", "parse TXT -> LS"))
        self.label_5.setText(_translate("MainWindow", "extra functions"))
        self.button_showGraph.setText(_translate("MainWindow", "show Graph"))
        self.button_parseAll.setText(_translate("MainWindow", "parse directory"))
        self.button_add_orientation.setText(_translate("MainWindow", "add_orientation"))
        self.label_4.setText(_translate("MainWindow", "JW"))

