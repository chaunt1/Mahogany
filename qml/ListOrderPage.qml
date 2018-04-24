import VPlayApps 1.0
import QtQuick 2.0

/*

// EXAMPLE USAGE:
// add the following piece of code inside your App { } to display the List Page

ListOrderPage {

}

*/

ListPage {
    id: orderPage
    title: qsTr("List Order Page")

    rightBarItem: IconButtonBarItem {
        icon: IconType.plus

        onClicked: {
            masterPage.model.push({ text: new Date() })
            masterPage.modelChanged()
        }
    }

    // TODO add your model
    model: [{ type: "Fruits", text: "Banana" },
        { type: "Fruits", text: "Apple" },
        { type: "Vegetables", text: "Potato" }]

    section.property: "type"

    delegate: SwipeOptionsContainer {
        id: container

        rightOption: AppButton {
            text: qsTr("Delete")

            onClicked: {
                container.hideOptions()
                masterPage.model.splice(index, 1)
                masterPage.modelChanged()
            }
        }
    }

    SimpleRow {
        onSelected: {
            masterPage.navigationStack.popAllExceptFirstAndPush(Qt.resolvedUrl("DetailPage.qml"), { content: item.text })
        }
    }
}
