import VPlayApps 1.0
import QtQuick 2.0

Page {
    title: qsTr("Main Page")


AppButton {
    id: appButton
    x: 30
    y: 48
    text: "V"

    onClicked: {
        NavigationStack.push(ListOrderPage)
    }
}

AppButton {
    id: appButton1
    x: 180
    y: 48
    text: "P1"

    onClicked: {

    }
}

AppButton {
    id: appButton2
    x: 330
    y: 48
    text: "P2"

    onClicked: {

    }
}

AppButton {
    id: appButton3
    x: 330
    y: 108
    text: "P3"

    onClicked: {

    }
}

AppButton {
    id: appButton4
    x: 330
    y: 168
    text: "P4"

    onClicked: {

    }
}

AppButton {
    id: appButton5
    x: 255
    y: 228
    text: "P5"

    onClicked: {

    }
}

AppButton {
    id: appButton6
    x: 97
    y: 108
    width: 158
    height: 92
    text: "Không Gian Chung"
    appButton6.dropShadow: true
}
}
