import QtQuick

Item {
    id: item
    width: 180
    height: 40
    Row {
        spacing: 5
        Rectangle { id: rect; border.color: "black"; color: code ; width: 10; height: 10 }
        Text{id: textColor; text: name}
    }
}
