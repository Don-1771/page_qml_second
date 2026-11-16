import QtQuick
import QtQuick.Window
import QtQuick.Controls

Page {
    id: page
    visible: true
    width: 640
    height: 480
    Column {
        id: column
        width: 200
        height: 350
        spacing: 20
        anchors.centerIn: parent

        CoolButton {
            id: button
            height: 100
            width: 100
            path: "up.png"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: console.log("Up clicked")
        }

        CoolButton {
            id: button1
            height: 100
            width: 100
            path: "down.png"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: console.log("Down clicked")
        }
    }

}
