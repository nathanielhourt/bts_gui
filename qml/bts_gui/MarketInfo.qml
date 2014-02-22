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

    ColumnLayout {
        anchors {
            top: marketStateHeader.bottom
            topMargin: 5
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        OrderPlacementOptions {
            id: orderPlacementOptions
            Layout.minimumHeight: 100
            Layout.preferredHeight: 200
            anchors.left: parent.left
            anchors.right: parent.right
        }

        Row {
            Layout.minimumHeight: 100
            Layout.preferredHeight: 200
            Layout.fillHeight: true
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 30

            OrderList {
                id: localOrderList
                height: parent.height
                width: Math.max(parent.width / 3.5, implicitWidth)
            }

            OrderBooks {
                id: marketBidList
                height: parent.height
                spacing: parent.spacing
            }

        }
    }
}
