import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Layouts 1.2
import QtGraphicalEffects 1.0

Item {
    property string lightSwitchName
    property int fontSize: 11

    id: switchComponentId
    anchors.left: parent.left
    anchors.right: parent.right
    height: 50

    Rectangle {
        anchors.fill: parent
        border.width: 1
        border.color: "black"

       LinearGradient {
            anchors.margins: 1
            anchors.fill: parent
            start: Qt.point(0, -10)
            end: Qt.point(0, switchComponentId.height + 10)
            gradient: Gradient {
                GradientStop { position: 0.0; color: "white" }
                GradientStop { position: 0.5; color: "silver" }
                GradientStop { position: 1.0; color: "white" }
            }
        }

         RowLayout {
            anchors.fill: parent
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.leftMargin: 10
            spacing: 10

            Text {
                anchors.left: parent.left
                text: lightSwitchName
                font.pointSize: fontSize
                font.bold: true
            }

            Switch {
                id: switchId
                anchors.right: parent.right
                anchors.rightMargin: 10
                style: SwitchStyle {
                    groove: Rectangle {
                        implicitWidth: 80
                        implicitHeight: 40
                        color: control.checked ? "yellow" : "grey"
                        border.width: 1
                    }
                }
            }
        }
    }
}
