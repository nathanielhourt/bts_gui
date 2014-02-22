import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Layouts 1.0

Row {
    ListModel {
        id: dummyModel
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
        ListElement {
            quote_amount: "1000.00 USD"
            base_amount: "9.00 XTS"
            type: "Bid"
            status: "Open"
        }
    }

    OrderTable {
        id: marketBidList
        height: parent.height
        width: 300
        model: dummyModel
        label: "Market Bids"
    }
    OrderTable {
        id: marketAskList
        height: parent.height
        width: 300
        model: dummyModel
        label: "Market Asks"
    }
}
