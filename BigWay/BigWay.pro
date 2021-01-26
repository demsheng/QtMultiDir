QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets


TEMPLATE = app #表示项目是应用程序模式

DESTDIR = ../bin #定义项目编译之后生成的结果文件的存放路径

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

win32:INCLUDEPATH += ..\SmallBoy

win32 { #表示Windows环境的特殊设置，这个大括号不能单独放在下一行，否则编译会报错
    LIBS += ../bin/SmallBoy.lib #包含项目需要用到的共享库
}

unix { #表示Linux环境的特殊设置，这个大括号不能单独放在下一行，否则编译会报错
    LIBS += ../bin/libSmallBoy.so #包含项目需要用到的共享库，注意文件名多了关键字"lib"，扩展名是.so
}


SOURCES += \
    main.cpp \
    mainwindow.cpp

HEADERS += \
    mainwindow.h

FORMS += \
    mainwindow.ui

## Default rules for deployment.
#qnx: target.path = /tmp/$${TARGET}/bin
#else: unix:!android: target.path = /opt/$${TARGET}/bin
#!isEmpty(target.path): INSTALLS += target

