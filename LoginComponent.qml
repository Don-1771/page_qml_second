import QtQuick
import QtQuick.Window
import QtQuick.Controls

Page {
    id: page
    visible: true
    width: 640
    height: 480

    Popup{
        id: popup
        width: 200
        height: 200
        anchors.centerIn: parent
        modal: true
        focus: true
        onClosePolicyChanged: popup.CloseOnEscape | popup.CloseOnPressOutside
        Label{
            id: label
            anchors.centerIn: parent
            text: ""
        }
    }

    Login{
        id: login
        width: 200
        height: 250
        anchors.centerIn: parent
        onLogin: (username, password) => {
            popup.open()
            console.log("Username: ", username, " Password: ", password)
            label.text = username
        }
    }

}
