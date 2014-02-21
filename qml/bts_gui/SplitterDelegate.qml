import QtQuick 2.1
import QtQuick.Layouts 1.0

Rectangle {
    color: palette.mid
    width: orientation === Qt.Horizontal? parent.width : 3
    height: orientation === Qt.Horizontal? 3 : parent.height

    property int orientation

    GridLayout {
        flow: orientation === Qt.Horizontal? GridLayout.LeftToRight : GridLayout.TopToBottom
        anchors.centerIn: parent

        Rectangle {
            width: 2
            height: 2
            radius: 1
            color: palette.midlight
        }
        Rectangle {
            width: 2
            height: 2
            radius: 1
            color: palette.midlight
        }
        Rectangle {
            width: 2
            height: 2
            radius: 1
            color: palette.midlight
        }
    }
}
