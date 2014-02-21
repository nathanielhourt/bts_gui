import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

import io.Invictus.BitsharesX 1.0

ApplicationWindow {
    width: 1000
    height: 600
    color: palette.window
    title: qsTr("BitsharesX")

    SystemPalette {
        id: palette
        colorGroup: SystemPalette.Active
    }
    MarketModel {
        id: globalMarketModel
    }

    ColumnLayout {
        anchors.fill: parent

        Item {
            Layout.fillHeight: true
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

            Label {
                anchors.centerIn: parent
                text: "Balance Info"
            }
        }
    }

    statusBar: StatusBar {
        RowLayout {
            Label {text: "Network Connection Status Info"}
        }
    }
}
