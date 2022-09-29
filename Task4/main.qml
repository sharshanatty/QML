import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")


        ListView {
            id: list
            anchors {
                top: parent.top
                bottom: parent.bottom
            }

            model: rectangleModel

            delegate: Rectangle {
                width: 100
                height: 100
                color: model.color
                Text {
                    text: model.text
                    color: model.textColor
                }
            }
        }

        ListModel {
            id: rectangleModel

            ListElement {
                text: "yellow"
                color: "yellow"
                textColor: "red"
            }

            ListElement {
                text: "red"
                color: "red"
                textColor: "yellow"
            }
        }
}
