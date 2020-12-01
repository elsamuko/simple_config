MAIN_DIR = ..
SRC_DIR  = $${MAIN_DIR}/src

SOURCES += $${SRC_DIR}/simple_config.cpp

include( setup.pri )
linux: include( linux.pri )
win32: include( win.pri )
macx:  include( mac.pri )
