import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Button {
        id: button
        text: "Add rectangle"
        onClicked: rectangleModel.append({ "color": "red", "text": rectangleModel.count })
    }

    ListView {
        id: list
        anchors {
            top: button.bottom
            bottom: parent.bottom
        }

        model: rectangleModel

        delegate: Rectangle {
            width: 100
            height: 100
            color: model.color
            Text {
                text: model.text
            }
            MouseArea {
                anchors.fill: parent
                onClicked: rectangleModel.remove(index)
            }
        }
    }

    ListModel {
        id: rectangleModel
    }
}
