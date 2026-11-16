import QtQuick
import QtQuick.Controls
Page{
    title: qsTr("Stack")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1) {
                    stackView.pop()
                } else {
                    drawer.open()
                }
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

    Drawer {
        id: drawer
        width: window.width * 0.66
        height: window.height

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Lesson 96. Custom image button")
                width: parent.width
                onClicked: {
                    stackView.push("CustomImageButton.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Lesson 97. Dynamically created number pad")
                width: parent.width
                onClicked: {
                    stackView.push("DynamicallyCreatedNumberPad.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Lesson 98. Login component")
                width: parent.width
                onClicked: {
                    stackView.push("LoginComponent.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Lesson 99. Owner drawn ComboBox")
                width: parent.width
                onClicked: {
                    stackView.push("OwnerDrawnComboBox.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Lesson 100. Owner drawn ListView")
                width: parent.width
                onClicked: {
                    stackView.push("OwnerDrawnListView.qml")
                    drawer.close()
                }
            }
        }
    }

    StackView {
        id: stackView
        initialItem: "Home.qml"
        anchors.fill: parent
    }
}