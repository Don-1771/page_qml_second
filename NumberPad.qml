import QtQuick
import QtQuick.Controls

Item {
    id: root
    signal clicked(int value)

    Column{
        id: col
        spacing: 5

        Grid{
            id: grid
            spacing: 5
            columns: 3
            rows: 4
        }
    }

    function doClicked(value){
        clicked(value)
    }

    Component.onCompleted: {
        var num = 0
        for(var i=0; i < 10; ++i){
            if(i === 0) num = 7;
            if(i === 3) num = 4;
            if(i === 6) num = 1;
            if(i === 9) num = 0;

            var btn = Qt.createQmlObject('
                           import QtQuick
                           import QtQuick.Controls

                           Button{
                               id: btn' + i + '
                               onClicked:doClicked('+ num +')
                           }
                           '
                        , grid
                        , "DinamicallyLoadedNumberPadItem")
            btn.text = num
            btn.width = 40
            btn.height = 40
            num++
        }

        var obj = grid.children[grid.children.length - 1]
        obj.parent = col
        obj.width = (40 * grid.columns) + 10
    }

}
