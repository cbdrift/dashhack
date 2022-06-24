import QtQuick 2.8
import QtQuick.Controls 1.4 as Quick1
import QtQuick.Controls 2.1
import Qt.labs.settings 1.0
import QtSensors 5.0
import QtQuick.Controls.Styles 1.4

import QtMultimedia 5.8
import "qrc:/Gauges/"
import DLM 1.0
import QtQuick.VirtualKeyboard 2.1





Rectangle{
    color: "#5a5454"
    property int lastdashamount
    anchors.fill: parent


    DLM {
        id: downloadManager
    }
    Connections {
        target: Dashboard
        onEcuChanged: {
            setregtabtitle()
        }
    }

    ListView {
        id: listView
        x: 0
        y: 0
        width: 180
        height: 480
        model: ListModel {
            ListElement {
                title: "Main"
                source: "Settings/main.qml"
            }
            ListElement {
                title: "Dash Sel."
                source: "Settings/DashSelector.qml"
            }
            ListElement {
                title: "GPS"
                source: "Settings/GPS.qml"
            }
            ListElement {
                title: "Sensehat" // Tab index 2
                source: "Settings/sensehat.qml"
            }
            ListElement {
                title: "Warn / Gear" // Tab index 3
                source: "Settings/warn_gear.qml"
            }
            ListElement {
                title: "Speed" // Tab index 4
                source: "Settings/speed.qml"
            }

            ListElement {
                title: "" // Tab index 5
                source: "Settings/analog.qml"
            }
            ListElement {
                title: "RPM"
                source: "Settings/rpm.qml"
            }

            ListElement {
                title: "EX Board" // Tab index 6
                source: "qrc:/ExBoardAnalog.qml"
            }

            ListElement {
                title: "Startup" // Tab index 8
                source: "Settings/startup.qml"
            }

            ListElement {
                title: "Network" // Tab index 9
                source: "Settings/network.qml"
            }

            ListElement {
                title: "Version and updates" // Tab index 9
                source: "Settings/version.qml"
            }
        }
        delegate: Item {
            x: 5
            width: parent.width - 5
            height: 40
            Button {
                // color: "#ccc1c1"
                anchors.fill: parent
                text: title
                anchors.verticalCenter: parent.verticalCenter
                onClicked: {
                    loader.source = source
                }
            }
        }

    }

    Loader {
        id: loader
        // anchors.fill: parent
        anchors.left : listView.right
        anchors.right: parent.right
        anchors.leftMargin: 5

        height: 480
    }

}
