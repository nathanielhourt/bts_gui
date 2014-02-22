import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.1

Item {
    implicitWidth: 220
    GroupBox {
        title: qsTr("Your Orders")
        anchors.fill: parent

        ScrollView {
            anchors.fill: parent

            ListView {
                id: ordersList
                focus: true

                add: Transition {
                    NumberAnimation { property: "opacity"; from: 0; to: 1 }
                }
                remove: Transition {
                    NumberAnimation { property: "opacity"; from: 1; to: 0; easing.type: "InQuad" }
                }
                displaced: Transition {
                    SequentialAnimation {
                        PauseAnimation { duration: 150 }
                        NumberAnimation { properties: "x,y"; easing.type: "OutQuad" }
                    }
                }

                model: ListModel {
                    id: ordersModel
                    ListElement {
                        type: "Bid"
                        quoteAmount: "90.00"
                        quoteUnit: "USD"
                        baseAmount: "1.00"
                        baseUnit: "XTS"
                    }
                    ListElement {
                        type: "Bid"
                        quoteAmount: "90.00"
                        quoteUnit: "USD"
                        baseAmount: "1.00"
                        baseUnit: "XTS"
                    }
                    ListElement {
                        type: "Ask"
                        quoteAmount: "1.0"
                        quoteUnit: "XTS"
                        baseAmount: "1.0"
                        baseUnit: "PTS"
                    }
                    ListElement {
                        type: "Ask"
                        quoteAmount: "1.0"
                        quoteUnit: "XTS"
                        baseAmount: "1.0"
                        baseUnit: "PTS"
                    }
                    ListElement {
                        type: "Short"
                        quoteAmount: "1.0"
                        quoteUnit: "XTS"
                        baseAmount: "1.000000000003"
                        baseUnit: "PTS"
                    }
                }
                delegate: OrderDelegate{}
            }
        }
    }
}
