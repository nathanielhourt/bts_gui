import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

TabView {
    OrderPlacementMenu {
        title: qsTr("Buy")

        onPlaceOrder: console.log("Should buy " + amount + " " + globalMarketModel.quoteUnitName);
    }
    OrderPlacementMenu {
        title: qsTr("Sell")

        onPlaceOrder: console.log("Should sell " + amount + " " + globalMarketModel.quoteUnitName);
    }
    OrderPlacementMenu {
        title: qsTr("Short")

        onPlaceOrder: console.log("Should short " + amount + " " + globalMarketModel.quoteUnitName);
    }
}
