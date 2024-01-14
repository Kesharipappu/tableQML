import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300
    title: "Table Display Example"

    Rectangle {
        width: parent.width
        height: parent.height

        Button {
            text: "Show Table"
            anchors.centerIn: parent

            onClicked: {
                listView.visible = true;
            }
        }

        ListView {
            id: listView
            anchors.fill: parent
            visible: false

            model: ListModel {
                ListElement { name: "Name 1"; fathername: "Father 1"; mothername: "Mother 1" }
                ListElement { name: "Name 2"; fathername: "Father 2"; mothername: "Mother 2" }
                ListElement { name: "Name 3"; fathername: "Father 3"; mothername: "Mother 3" }
                ListElement { name: "Name 4"; fathername: "Father 4"; mothername: "Mother 4" }
            }

            delegate: Item {
                width: listView.width
                height: 40

                Row {
                    spacing: 10

                    Text {
                        text: model.name
                    }

                    Text {
                        text: model.fathername
                    }

                    Text {
                        text: model.mothername
                    }
                }
            }
        }
    }
}
