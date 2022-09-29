import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle
        color: 'black'
        width: 100
        height: 100
        visible: true

        anchors {
            centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: animation.start()
        }

        ParallelAnimation {
            id: animation

            PropertyAnimation {
                id: sizeAnimation
                target: rectangle
                properties: "width"
                to: 50
                duration: 2000
            }

            RotationAnimation {
                target: rectangle
                properties: "rotation"
                to: 45
                duration: 2000
            }
        }
    }
}
