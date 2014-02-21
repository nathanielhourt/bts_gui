import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

import io.Invictus.BitsharesX 1.0

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
            text: "1.5 " + globalMarketModel.quoteUnitName
        }

        Label {
            id: baseBalanceLabel
            font.pointSize: 16
            text: "8.2 " + globalMarketModel.baseUnitName
        }
    }

    Item {
        Layout.fillWidth: true
        Label {
            anchors.centerIn: parent
            text: "Other balances"
        }
    }

    Column {
        spacing: 3

        Button {
            text: qsTr("Import Wallet")
            width: 100
        }
        Button {
            text: qsTr("Transfer Assets")
            width: 100
        }
    }

    //Right Padding
    Item {Layout.preferredWidth: 1}
}
