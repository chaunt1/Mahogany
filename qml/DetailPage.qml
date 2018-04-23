import VPlayApps 1.0
import QtQuick 2.0

Page {
    id: detailPage
    title: qsTr("Detail Page")

    rightBarItem: IconButtonBarItem {
        icon: IconType.plus

        onClicked: {
            masterPage.model.push({ text: new Date() })
            masterPage.modelChanged()
        }
    }

    model: []

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

        SimpleRow {
            onSelected: {
                masterPage.navigationStack.popAllExceptFirstAndPush(Qt.resolvedUrl("DetailPage.qml"), { content: item.text })
            }
        }
    }
}
