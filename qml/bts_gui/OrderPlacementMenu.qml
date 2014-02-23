import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Tab {
    id: orderTab

    signal placeOrder(real amount, real price)

    //Nest a second item because Tab forces the immediate child to fill
    Item {
        GridLayout {
            columnSpacing: 20
            rowSpacing: 15
            anchors {
                fill: parent
                margins: 20
            }
            columns: 3
            
            Label {
                text: orderTab.title
            }
            TextField {
                id: orderAmount
                Layout.preferredWidth: 150
                Layout.fillWidth: true
                inputMethodHints: Qt.ImhFormattedNumbersOnly
                validator: DoubleValidator{bottom: 0}
            }
            Label {
                text: globalMarketModel.quoteUnitName
            }
            
            Label {
                text: qsTr("Price")
            }
            TextField {
                id: orderPrice
                Layout.preferredWidth: 150
                Layout.fillWidth: true
                inputMethodHints: Qt.ImhFormattedNumbersOnly
                validator: DoubleValidator{bottom: 0}
            }
            Label {
                text: globalMarketModel.quoteUnitName + qsTr(" per ") + globalMarketModel.baseUnitName
            }
            
            Label {
                text: qsTr("Total")
            }
            Label {
                id: totalLabel
                property real total: parseFloat(orderAmount.text) / parseFloat(orderPrice.text)
                text: isNaN(total)? '' : total.toFixed(2) + " " + globalMarketModel.baseUnitName
            }
            Button {
                text: qsTr("Place Order")
                enabled: !isNaN(totalLabel.total) && totalLabel.total > 0
                onClicked: placeOrder(orderAmount.text, orderPrice.text)
            }
        }
    }
}
