import QtQuick
import QtQuick.Controls

Page {
    width: 600
    height: 400

    title: qsTr("Home")

    Label {
        color: "#f91b02"
        text: qsTr("Lesson 12. Custom components")
        font.pointSize: 15
        font.bold: true
        anchors.centerIn: parent
    }
}