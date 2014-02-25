#include "marketmodel.hpp"
#include "qtquick2controlsapplicationviewer.h"
#include "walletmodel.hpp"

#include <QtQml>

int main(int argc, char *argv[])
{
    Application app(argc, argv);
    QtQuick2ControlsApplicationViewer viewer;

    qmlRegisterType<MarketModel>("io.Invictus.BitsharesX", 1, 0, "MarketModel");
    qmlRegisterType<WalletModel>("io.Invictus.BitsharesX", 1, 0, "WalletModel");
    qmlRegisterType<Contact>("io.Invictus.BitsharesX", 1, 0, "Contact");

    viewer.setMainQmlFile(QStringLiteral("qml/bts_gui/main.qml"));
    viewer.show();

    return app.exec();
}
