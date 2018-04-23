import VPlayApps 1.0
import QtQuick 2.0

App {
    // You get free licenseKeys from https://v-play.net/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the V-Play Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://v-play.net/licenseKey>"

    NavigationStack {

        Page {
            title: qsTr("Main Page")


        AppButton {
            id: appButton
            x: 20
            y: 48
            text: "V"

            onClicked: {
                DetailPage { }
            }
        }

        AppButton {
            id: appButton1
            x: 170
            y: 48
            text: "P1"

            onClicked: {

            }
        }

        AppButton {
            id: appButton2
            x: 320
            y: 48
            text: "P2"

            onClicked: {

            }
        }

        AppButton {
            id: appButton3
            x: 320
            y: 108
            text: "P3"

            onClicked: {

            }
        }

        AppButton {
            id: appButton4
            x: 320
            y: 168
            text: "P4"

            onClicked: {

            }
        }

        AppButton {
            id: appButton5
            x: 320
            y: 228
            text: "P5"

            onClicked: {

            }
        }
    }
    }
}
