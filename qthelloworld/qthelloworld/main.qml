import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    MouseArea{
        anchors.fill: parent //affects the all
        onClicked: {//if mouse clikced window
            Qt.quit()//close all window
        }
    }

    Text {
        id: name
        text: "hello world"
        anchors.centerIn: parent//text in center
    }
}
