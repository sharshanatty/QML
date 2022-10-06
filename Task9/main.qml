import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    TextField {
        id: textField
        text: "Кнопка не нажата"
    }

    Button {
        id: btn
        text: "Нажать"
        anchors.top: textField.bottom
        onPressed: textField.text = "Кнопка нажата"
        onReleased: textField.text = "Кнопка не нажата"

    }
}
