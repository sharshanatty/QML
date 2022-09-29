import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: red

        width: 100
        height: 100
        color: 'red'
        visible: true
    }

    Rectangle {
        id: green


        anchors {
            top: red.verticalCenter
            left: red.right
        }

        width: 100
        height: 100
        color: 'green'
        visible: true
    }

    Rectangle {
        id: blue

        anchors {
            left: green.horizontalCenter
        }

        width: 100
        height: 100
        color: 'blue'
        visible: true

        Text {
            text: 'Квадрат'
            color: 'white'

            anchors {
                centerIn: parent
            }
        }
    }
}


