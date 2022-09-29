import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import Lab3 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Counter {
        id: counter
        value: 5
    }

    Text {
        id: text
        text: counter.value
        anchors {
            top: parent.top
        }
    }

    Button {
        id: btnIncrease
        text: "Увеличить"
        onClicked: counter.increase()
        anchors {
            top: text.bottom
        }
    }

    Button {
        id: btnReset
        text: "Сбросить до 0"
        onClicked: counter.setValue(0)
        anchors {
            top: text.bottom
            left: btnIncrease.right
        }
    }


}
