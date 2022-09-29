import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.XmlListModel 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Курсы валют")

    XmlListModel {
         id: xmlListModel
         source: "http://www.cbr.ru/scripts/XML_daily.asp"
         query: "/ValCurs/Valute"
         XmlRole { name: "name"; query: "Name/string()" }
         XmlRole { name: "value"; query: "Value/string()" }
     }

    ListView {
     anchors.fill: parent
         model: xmlListModel
         delegate: Column {
         Text { text: name }
         Text { text: value }
         }
     }
}
