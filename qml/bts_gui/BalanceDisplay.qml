import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

import io.Invictus.BitsharesX 1.0
import "Transfers"

RowLayout {
    spacing: 20

    //Left Padding
    Item {Layout.preferredWidth: 1}

    Column {
        id: selectedPairBalances
        anchors.verticalCenter: parent.verticalCenter
        spacing: 10

        Label {
            id: quoteBalanceLabel
            font.pointSize: 16
            text: globalWalletModel.balance[globalMarketModel.quoteUnit].toFixed(2) + " " + globalMarketModel.quoteUnitName
        }

        Label {
            id: baseBalanceLabel
            font.pointSize: 16
            text: globalWalletModel.balance[globalMarketModel.baseUnit].toFixed(2) + " " + globalMarketModel.baseUnitName
        }
    }

    Item {
        Layout.fillWidth: true
        Layout.fillHeight: true

        Row {
            anchors.centerIn: parent
            spacing: 30

            Repeater {
                model: MarketModel.AssetTypeCount
                delegate: Label {
                    font.pointSize: 13
                    text: globalMarketModel.assetName(index) + ": " + globalWalletModel.balance[index].toFixed(2)
                    visible: index !== globalMarketModel.baseUnit && index !== globalMarketModel.quoteUnit
                }
            }
        }
    }

    Column {
        spacing: 3
        Layout.preferredWidth: parent.width / 8
        Layout.minimumWidth: transferButton.implicitWidth

        Button {
            id: transferButton
            text: qsTr("Transfer Assets")
            width: parent.width
            onClicked: transferWindow.show()

            TransferWindow {
                id: transferWindow
            }
        }
    }

    //Right Padding
    Item {Layout.preferredWidth: 1}
}
