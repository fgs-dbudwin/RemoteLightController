import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

    MainForm {
        anchors.fill: parent

        ListView {
            width: parent.width
            height: parent.height
            model: LightSwitchModel{}
            delegate: LightSwitch {
                lightSwitchName: buttonName
            }
        }
    }
}

