#include "marketmodel.hpp"
#include "qtquick2controlsapplicationviewer.h"

#include <QtQml>

int main(int argc, char *argv[])
{
    Application app(argc, argv);
    QtQuick2ControlsApplicationViewer viewer;

    qmlRegisterType<MarketModel>("io.Invictus.BitsharesX", 1, 0, "MarketModel");

    viewer.setMainQmlFile(QStringLiteral("qml/bts_gui/main.qml"));
    viewer.show();

    return app.exec();
}
