import QtQuick
import QtQuick.Controls

ComboBox {
    id: root
    model: ["red", "blue", "green", "yellow", "orange"]

    delegate: ItemDelegate{
        width: root.width
        highlighted: highlightedIndex === index

        contentItem: Row{
            spacing: 5
            width: root.width
            height: 50

            Rectangle{
                id: rect
                width: 10
                height: 10
                border.width: 2
                border.color: "black"
                color: modelData
            }
            Text{
                id: label
                text: modelData
                color: black
                elide: Text.ElideRight
                verticalAlignment: Text.AlignVCenter
            }
        }
    }

    background: Rectangle {
        width: root.width
        implicitHeight: 40
        implicitWidth: 100
        border.color: "green"
        color: "lightgreen"
    }
}
