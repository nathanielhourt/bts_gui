# Add more folders to ship with the application, here
folder_01.source = qml/bts_gui
folder_01.target = qml
DEPLOYMENTFOLDERS = folder_01

# Additional import path used to resolve QML modules in Creator's code model
QML_IMPORT_PATH =

CONFIG += c++11

# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += main.cpp \
    marketmodel.cpp \
    walletmodel.cpp

# Installation path
# target.path =

# Please do not modify the following two lines. Required for deployment.
include(qtquick2controlsapplicationviewer/qtquick2controlsapplicationviewer.pri)
qtcAddDeployment()

HEADERS += \
    marketmodel.hpp \
    walletmodel.hpp

OTHER_FILES += \
    qml/bts_gui/OrderPlacementTabView.qml
