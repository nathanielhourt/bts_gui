#include "marketmodel.hpp"
#include "qtquick2controlsapplicationviewer.h"
#include "walletmodel.hpp"

#include <QtQml>
#include <QIcon>

int main(int argc, char *argv[])
{
    Application app(argc, argv);
    app.setApplicationDisplayName("Bitshares X");
    app.setOrganizationName("Invictus Innovations Inc.");
    app.setOrganizationDomain("invictus.io");
    QtQuick2ControlsApplicationViewer viewer;

    qmlRegisterType<MarketModel>("io.Invictus.BitsharesX", 1, 0, "MarketModel");
    qmlRegisterType<WalletModel>("io.Invictus.BitsharesX", 1, 0, "WalletModel");

    viewer.setMainQmlFile(QStringLiteral("qml/bts_gui/main.qml"));
    viewer.setWindowIcon(QIcon("res/B.png"));
    viewer.show();

    return app.exec();
}
