import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.12
import "script.js" as JS

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    TextField {
        id: textField
    }

    Button {
        id: btn
        text: "Добавить заметку"
        anchors.top: textField.bottom
    }

    ListView {
        id: list
        anchors.top: textField.bottom
        model: ListModel {
            id: listModel
            Component.onCompleted:
        }
    }
}
