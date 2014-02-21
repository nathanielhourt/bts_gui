import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

RowLayout {
    ComboBox {
        implicitWidth: 65
        model: globalMarketModel.assetNames
        currentIndex: globalMarketModel.quoteUnit
        onCurrentIndexChanged: globalMarketModel.quoteUnit = currentIndex;
    }
    Label {
        text: " / "
    }
    ComboBox {
        implicitWidth: 65
        model: globalMarketModel.assetNames
        currentIndex: globalMarketModel.baseUnit
        onCurrentIndexChanged: globalMarketModel.baseUnit = currentIndex;
    }
    Item {
        width: 10
    }
    Label {
        text: qsTr("Last Price: $92.56")
    }
    Item {
        width: 5
    }
    Label {
        text: qsTr("High: $100.00")
    }
    Item {
        width: 5
    }
    Label {
        text: qsTr("Low: $87.98")
    }
    Item {
        width: 5
    }
    Label {
        text: qsTr("Weighted Avg: $95.01")
    }
    Item {
        width: 10
    }
    Label {
        text: qsTr("Volume: 15024 BTS")
    }
}
