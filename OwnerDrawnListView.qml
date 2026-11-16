import QtQuick
import QtQuick.Window
import QtQuick.Controls

Page {
    id: page
    visible: true
    width: 640
    height: 480

    ListView{
        id: listView
        anchors.fill: parent
        anchors.margins: 20
        delegate: ColorDelegate{}
        model: ColorModel{}
    }

}