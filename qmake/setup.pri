# set debug/release info
CONFIG(debug, debug|release) {
    COMPILE_MODE=debug
}

CONFIG(release, debug|release) {
    COMPILE_MODE=release
}

CONFIG -= qt
CONFIG += c++1z
CONFIG += console
CONFIG -= app_bundle
CONFIG += static

unix:!macx: CONFIG += linux

DESTDIR = $${MAIN_DIR}/bin/$${COMPILE_MODE}
OBJECTS_DIR = $${MAIN_DIR}/tmp/$${TARGET}/$${COMPILE_MODE}/objects
MOC_DIR = $${MAIN_DIR}/tmp/$${TARGET}/$${COMPILE_MODE}/moc
UI_DIR = $${MAIN_DIR}/tmp/$${TARGET}/$${COMPILE_MODE}/uic
RCC_DIR = $${MAIN_DIR}/tmp/$${TARGET}/$${COMPILE_MODE}/rcc

INCLUDEPATH += $${SRC_DIR}

DEFINES += __PRETTY_FUNCTION__=__FUNCTION__
