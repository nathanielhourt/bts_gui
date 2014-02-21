import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Rectangle {
    id: container
    height: orderInformationColumn.height
    width: parent.width - 5
    color: "transparent"
    clip: true
    
    MouseArea {
        enabled: true
        anchors.fill: parent
        onClicked: parent.ListView.view.currentIndex = index
    }
    
    Rectangle {
        id: orderTypeIndicator
        height: 10
        width: height
        radius: height/2
        color: switch(type) {
               case "Bid":
                   return "skyblue";
               case "Ask":
                   return "darkblue";
               case "Short":
                   return "teal";
               }
        anchors {
            verticalCenter: parent.verticalCenter
        }
        x: parent.width / 10 - width / 2
    }
    
    Column {
        id: orderInformationColumn
        anchors {
            left: orderTypeIndicator.right
            leftMargin: 5
            right: parent.right
            top: parent.top
        }
        height: childrenRect.height
        
        Label {
            id: orderType
            font.pointSize: 12
            color: palette.text
            text: qsTr(type)
        }
        
        Label {
            id: orderDescription
            width: parent.width
            color: palette.text
            wrapMode: Text.Wrap
            text: baseAmount + " " + baseUnit + qsTr(" for ") + quoteAmount + " " + quoteUnit
        }
    }

    RowLayout {
        id: orderOptionsContainer
        visible: false
        anchors {
            top: orderInformationColumn.bottom
            topMargin: 3
            left: orderTypeIndicator.left
        }
        height: childrenRect.height

        Button {
            text: type === "Short"? qsTr("Cover") : qsTr("Cancel")
        }
        Button {
            visible: type === "Short"
            text: qsTr("Set Margin")
        }
    }

    states: [
        State {
            name: "HIGHLIGHTED"
            when: container.ListView.isCurrentItem

            PropertyChanges {
                target: container
                color: palette.highlight
                height: orderInformationColumn.height + orderOptionsContainer.height + 5
            }
            PropertyChanges {
                target: orderOptionsContainer
                visible: true
            }
            PropertyChanges {
                target: orderType
                color: palette.highlightedText
            }
            PropertyChanges {
                target: orderDescription
                color: palette.highlightedText
            }
        }

    ]
    transitions: Transition {
        ColorAnimation {easing.type: "InQuad"}
        NumberAnimation {easing.type: "InQuad"; target: container; property: "height"}
    }
}
