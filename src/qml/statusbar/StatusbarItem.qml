import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    property alias source: icon.source
    property string panel_source
    property Component panel
    property double iconSize
    Layout.fillWidth: true
    Layout.fillHeight: true
    Image {
        width: iconSize
        height: iconSize
        id: icon
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            if (panel_source !== "" && !panel) {
                panel_loader.source = panel_source
                panel_loader.visible = !panel_loader.visible
            }
            if (panel && panel_source === "") {
                panel_loader.sourceComponent = panel
                panel_loader.visible = !panel_loader.visible
            }
        }
    }
}
