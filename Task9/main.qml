import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.12

Window {
    width: 640
    height: 480
    visible: true
    title: "Hello World"

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

    ColumnLayout {
        id: layout
        RadioButton {
            id: btn1
            text: "Кнопка 1"
            onPressed: textField1.text = "Кнопка 1 выбрана"
        }
        RadioButton {
            id: btn2
            text: "Кнопка 2"
            onPressed: textField1.text = "Кнопка 2 выбрана"
        }
        anchors.top: btn.bottom
    }

    TextField {
        id: textField1
        text: "Ни одна кнопка не выбрана"
        anchors.top: layout.bottom
    }

    Button {
        id: btn3
        text: "Открыть диалог"
        anchors.top: textField1.bottom
        onClicked: dialog.open()
    }

    Dialog {
    id:dialog
     title: qsTr("Dialog Title")
     height: parent.height
     standardButtons: Dialog.Ok | Dialog.Cancel
     onAccepted:console.log(parseInt(textField2.text) + parseInt(textField3.text))
     contentItem: Rectangle {

     TextField {
         id: textField2
     }
     TextField {
         id: textField3
         anchors.top: textField2.bottom
     }
     }
    }

}
