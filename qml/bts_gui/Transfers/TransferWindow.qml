import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0

Window {
    title: qsTr("Transfer Assets")
    color: globalPalette.window
    width: 800
    height: 300

    RowLayout {
        id: transferLayout
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 20

        Label {
            text: qsTr("Transfer")
        }
        TextField {
            placeholderText: qsTr("amount")
            validator: DoubleValidator{bottom: 0}
            inputMethodHints: Qt.ImhFormattedNumbersOnly
        }
        Label {
            text: qsTr("to")
        }
        TextField {
            id: addressBox
            Layout.fillWidth: true
            placeholderText: qsTr("address")
        }
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
            id: tv
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: globalWalletModel.addressBook
            contentFooter: Button { text: "Add!" ; width: tv.width-5}

            onActivated: addressBox.text = model[row].address

            TableViewColumn {
                role: "label"
                title: qsTr("Label")
                width: 100
            }
            TableViewColumn {
                role: "address"
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
