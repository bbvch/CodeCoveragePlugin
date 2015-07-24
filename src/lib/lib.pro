TEMPLATE = lib

QTC_PLUGIN_NAME = CodeCoverage
QTC_SOURCE = $$(QTC_SOURCE)
QTC_BUILD  = $$(QTC_BUILD)

DEFINES += CODECOVERAGE_LIBRARY

# Qt Creator linking

## set the QTC_SOURCE and QTC_BUILD environment variable to override the setting here
IDE_SOURCE_TREE = $$QTC_SOURCE
IDE_BUILD_TREE = $$QTC_BUILD
USE_USER_DESTDIR = yes

PROVIDER = bbv

QTC_PLUGIN_DEPENDS += coreplugin projectexplorer qmakeprojectmanager
QTC_LIB_DEPENDS += extensionsystem

# CodeCoverage files
include($$QTC_SOURCE/src/qtcreatorplugin.pri)

include(codecoverage.pri)
OTHER_FILES = CodeCoverage.pluginspec

CONFIG += c++11

LIBS += -L/usr/lib/x86_64-linux-gnu/qtcreator \
        -L/usr/lib/x86_64-linux-gnu/qtcreator/plugins/QtProject
