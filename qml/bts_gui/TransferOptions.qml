import QtQuick 2.1
import QtQuick.Controls 1.0

GroupBox {
    //Add a space to pad the title on the left a bit
    title: " " + qsTr("Asset Transfers")

    Label {
        anchors.centerIn: parent
        text: "Transfer Options"
    }
}
