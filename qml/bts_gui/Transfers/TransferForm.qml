import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0

RowLayout {
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
        Layout.fillWidth: true
        placeholderText: qsTr("address")
    }
    Button {
        text: qsTr("Transfer")
        onClicked: console.log("NYI: Transfer")
    }
}
