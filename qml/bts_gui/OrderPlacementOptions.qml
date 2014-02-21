import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

TabView {
    id: orderPlacementOptions
    
    Tab {
        title: qsTr("Buy")
        
        //Nest a second item because Tab forces the immediate child to fill
        Item {
            GridLayout {
                columnSpacing: 20
                rowSpacing: 15
                anchors {
                    fill: parent
                    margins: 20
                }
                columns: 4
                
                Label {
                    text: qsTr("Buy")
                }
                TextField {
                    id: buyAmount
                    Layout.preferredWidth: 150
                    inputMethodHints: Qt.ImhFormattedNumbersOnly
                    validator: DoubleValidator{bottom: 0}
                }
                Label {
                    text: globalMarketModel.quoteUnitName
                }
                Item {Layout.fillWidth: true}
                
                Label {
                    text: qsTr("Price")
                }
                TextField {
                    id: buyPrice
                    Layout.preferredWidth: 150
                    inputMethodHints: Qt.ImhFormattedNumbersOnly
                    validator: DoubleValidator{bottom: 0}
                }
                Label {
                    text: globalMarketModel.quoteUnitName + qsTr(" per ") + globalMarketModel.baseUnitName
                }
                Item {Layout.fillWidth: true}
                
                Label {
                    text: qsTr("Total")
                }
                Label {
                    id: totalLabel
                    property real total: parseFloat(buyAmount.text) / parseFloat(buyPrice.text)
                    text: isNaN(total)? '' : total.toFixed(2) + " " + globalMarketModel.baseUnitName
                }
                Button {
                    text: qsTr("Place Order")
                    enabled: !isNaN(totalLabel.total) && totalLabel.total > 0
                }
            }
        }
    }
    Tab {
        title: qsTr("Sell")
    }
    Tab {
        title: qsTr("Short")
    }
}
