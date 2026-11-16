import QtQuick
import QtQuick.Controls 2.15

Item {

    signal login(string username, string password)

    Column {
        id: column
        x: 0
        y: 0
        width: 120
        height: 150
        spacing: 10

        Label {
            id: label
            text: "Username"
        }

        TextField {
            id: textField
            width: column.width
            placeholderText: "Ivan Ivanov"
        }

        Label {
            id: label1
            text: "Password"
        }

        TextField {
            id: textField1
            width: column.width
            placeholderText: "password"
            echoMode: TextInput.Password
        }

        Button {
            id: button
            width: column.width
            text: "Login"
            onClicked: login(textField.text, textField1.text)
        }
    }

}
