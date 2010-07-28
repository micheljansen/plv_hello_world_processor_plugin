#-------------------------------------------------
#
# Project created by QtCreator 2010-07-22T14:39:10
#
#-------------------------------------------------

TARGET = hello_world_plugin
TEMPLATE = lib
CONFIG += plugin

LIBS += -L../parlevision-all-build/libs -lplvcore -lplvgui
macx {
    LITERAL_DOT=.
    LITERAL_LIB=lib
    LIBRARYFILE = $$DISTDIR$$LITERAL_LIB$$TARGET$$LITERAL_DOT$$QMAKE_EXTENSION_SHLIB
    LIBS+= -framework OpenCV
    #QMAKE_POST_LINK  = install_name_tool -change libplvcore.dylib @executable_path/../Frameworks/libplvcore.dylib $$LIBRARYFILE
    #QMAKE_POST_LINK += && install_name_tool -change libplvgui.dylib @executable_path/../Frameworks/libplvgui.dylib $$LIBRARYFILE
}

INCLUDEPATH += ../parlevision/include \
                ../parlevision/plvgui/include

DEFINES += HELLO_WORLD_PLUGIN_LIBRARY

SOURCES += helloworldplugin.cpp \
    helloworldprocessor.cpp

HEADERS += helloworldplugin.h\
        hello_world_plugin_global.h \
    helloworldprocessor.h
