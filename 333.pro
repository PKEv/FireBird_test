#-------------------------------------------------
#
# Project created by QtCreator 2016-05-27T11:31:25
#
#-------------------------------------------------

QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = 333
TEMPLATE = app


#unix:LIBS += -lpq
#win32:LIBS += fbclient.lib

SOURCES += main.cpp\
        mainwindow.cpp


HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

#DISTFILES += \
#    fbclient.lib
