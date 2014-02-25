# Add more folders to ship with the application, here
qml_folder.source = qml/bts_gui
qml_folder.target = qml
resource_folder.source = res
DEPLOYMENTFOLDERS = qml_folder resource_folder

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
