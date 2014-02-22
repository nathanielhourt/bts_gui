import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

GroupBox {
    //Add a space to pad the title on the left a bit
    title: " " + qsTr("Market Status")
    implicitWidth: marketStateHeader.width + 20

    MarketStateHeader {
        id: marketStateHeader
        anchors.top: parent.top
        anchors.left: parent.left
    }

    GridLayout {
        anchors {
            top: marketStateHeader.bottom
            topMargin: 5
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        columns: 2

        OrderPlacementOptions {
            id: orderPlacementOptions
            Layout.minimumWidth: 250
            Layout.minimumHeight: 200
            Layout.fillHeight: true
        }
        Rectangle {
            color: "white"
            Layout.fillWidth: true
            Layout.fillHeight: true

            Label {
                anchors.centerIn: parent
                text: "Price History Chart Goes Here"
            }
        }

        OrderList {
            id: localOrderList
            Layout.minimumHeight: 175
            Layout.preferredWidth: orderPlacementOptions.width
        }
        OrderBooks {
            id: marketBidList
            Layout.minimumHeight: localOrderList.height
            Layout.fillWidth: true
        }

    }
}
