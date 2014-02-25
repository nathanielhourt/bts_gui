import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0

Window {
    title: qsTr("Transfer Assets")
    color: globalPalette.window
    width: 800
    height: 300

    TransferForm {
        id: transferLayout
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 20
    }

    GridLayout {
        anchors.top: transferLayout.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.margins: 20
        columns: 2

        Label {
            text: qsTr("Address Book")
        }
        Label {
            text: qsTr("Transfer History")
        }

        TableView {
            Layout.fillHeight: true
            Layout.fillWidth: true

            TableViewColumn {
                role: "address_label"
                title: qsTr("Label")
                width: 100
            }
            TableViewColumn {
                role: "address_text"
                title: qsTr("Address")
            }
        }
        TableView {
            Layout.fillHeight: true
            Layout.fillWidth: true

            TableViewColumn {
                role: "transfer_amount"
                title: qsTr("Amount")
                width: 100
            }
            TableViewColumn {
                role: "transfer_direction"
                title: qsTr("Direction")
                width: 60
            }
            TableViewColumn {
                role: "transfer_address"
                title: qsTr("Address")
            }
        }
    }
}
