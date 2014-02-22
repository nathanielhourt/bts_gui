import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

import io.Invictus.BitsharesX 1.0

ApplicationWindow {
    width: 1000
    height: 600
    minimumHeight: 600
    minimumWidth: minimumHeight
    color: globalPalette.window
    title: qsTr("Bitshares X")

    SystemPalette {
        id: globalPalette
        colorGroup: SystemPalette.Active
    }
    MarketModel {
        id: globalMarketModel
    }
    WalletModel {
        id: globalWalletModel
    }

    ColumnLayout {
        anchors.fill: parent

        Item {
            Layout.fillHeight: true
            Layout.minimumHeight: 200
            anchors.left: parent.left
            anchors.right: parent.right

            MarketInfo {
                id: marketInfo
                anchors.fill: parent
                anchors.topMargin: 10
            }
        }

        Item {
            Layout.minimumHeight: 100
            anchors.left: parent.left
            anchors.right: parent.right

            BalanceDisplay {
                anchors.fill: parent
            }
        }
    }

    statusBar: StatusBar {
        RowLayout {
            Label {text: "Network Connection Status Info"}
        }
    }
}
