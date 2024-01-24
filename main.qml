import QtQuick
import Qt.labs.platform

SystemTrayIcon {
    visible: true
    icon.source: "qrc:/images/icon.jpg"

    menu: Menu {
        MenuItem {
            text: qsTr("Quit")
            onTriggered: Qt.quit()
        }
    }
}
