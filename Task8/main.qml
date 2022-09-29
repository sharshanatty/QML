import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import Lab3 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Words {
        id: words
    }

    TextInput {
        id: input
        width: 100
        height: 20
    }
    Button {
        id: addButton
        text: "Add word"
        onClicked: {
            words.addWord(input.text)
            input.clear()
        }
        anchors {
            top: input.bottom
        }
    }
    Button {
        id: deleteButton
        text: "Delete word"
         onClicked: words.deleteWord()
        anchors {
            top: input.bottom
            left: addButton.right
        }
    }
    Text {
        id: textField
        text: words.transformedWords
        anchors {
            top: addButton.bottom
        }
    }
}
