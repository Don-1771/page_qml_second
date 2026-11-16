import QtQuick


Item {
    id: root
    property color colorBorder: "darkred"
    property color colorNormal: "red"
    property color colorPressed: "orange"
    property color colorHover: "yellow"

    property string path: ""

    signal clicked()

    Rectangle {
        id: rectangle
        width: 100
        height: 100
        color: colorNormal
        border.color: colorBorder
        border.width: 2
        radius: rectangle.width

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true
            onPressed: {
                rectangle.color = colorPressed
                root.clicked()
            }
            onEntered: rectangle.color = colorHover
            onReleased: rectangle.color = colorHover
            onExited: rectangle.color = colorNormal
        }

        Image {
            id: image
            anchors.fill: parent
            source: root.path
            fillMode: Image.PreserveAspectFit
        }
    }
}
