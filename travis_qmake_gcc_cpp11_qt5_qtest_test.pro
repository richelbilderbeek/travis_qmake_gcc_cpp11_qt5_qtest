QT       += core gui
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
TEMPLATE = app

QT += testlib

# Shared files
SOURCES += my_dialog.cpp
FORMS += my_dialog.ui
HEADERS += my_dialog.h
RESOURCES += travis_qmake_gcc_cpp11_qt5_qtest.qrc

# Unique files
SOURCES += qtmain_test.cpp
SOURCES += my_dialog_test.cpp
HEADERS += my_dialog_test.h

# C++11
CONFIG += c++11
QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
QMAKE_CXXFLAGS += -std=c++11

# Thanks to Qt
QMAKE_CXXFLAGS += -Wno-unused-variable
