import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

ColumnLayout {
    property alias model: __table.model
    property alias label: __label.text

    Label {
        id: __label
    }

    TableView {
        id: __table
        width: 300
        Layout.fillHeight: true
        Layout.fillWidth: true

        TableViewColumn {
            role: "quote_amount"
            title: qsTr("Quote Amount")
            width: 100
        }
        TableViewColumn {
            role: "base_amount"
            title: qsTr("Base Amount")
            width: 100
        }
        TableViewColumn {
            role: "status"
            title: qsTr("Status")
            width: 60
        }

    }
}
