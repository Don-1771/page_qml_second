import QtQuick
import QtQuick.Window
import QtQuick.Controls

Page {
    id: page
    visible: true
    width: 640
    height: 480

    // SquareButton.qml
    Rectangle {
        id: root

        signal activated(xPosition: real, yPosition: real)
        signal deactivated

        property int side: 100
        width: side; height: side

        onDeactivated: console.log("Deactivated!")
        onActivated: (xPosition, yPosition) => {
            console.log(`Activated at ${xPosition}, ${yPosition}`)
        }

        MouseArea {
            anchors.fill: parent
            onReleased: root.deactivated()
            onPressed: mouse => root.activated(mouse.x, mouse.y)
        }
    }

    Column {
        id: column
        width: 200
        height: 174
        anchors.centerIn: parent

        Label {
            id: label
            text: "0"
            font.pointSize: 25
            anchors.horizontalCenter: parent.horizontalCenter
        }

        NumberPad {
            id: numberPad
            width: column.width
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: (value) => label.text = value
        }
    }

}
