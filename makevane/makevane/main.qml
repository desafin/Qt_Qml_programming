import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 512
    height: 320
    visible: true
    title: qsTr("vane example")
    id: root


    BorderImage {

        source: "qrc:/images/background.png"

    }
    Image {
        id: polo
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        source: "qrc:/images/pole.png"
    }
    Image {
        id: whell
        anchors.centerIn: parent
        source: "qrc:/images/pinwheel.png"
        Behavior on rotation {
           NumberAnimation {
               duration: 250
           }
        }

        MouseArea{
            anchors.fill: parent
            onPressed: {

                whell.rotation += 90

            }
        }
    }


}


