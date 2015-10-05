import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.4

Page {

    id: page

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Settings")
            }
            // TODO: settings:
            Label {
                text: qsTr("General")
                font.family: Theme.fontFamilyHeading
                color: Theme.highlightColor
            }
            Button {
                width: parent.width
                text: qsTr("Bluetooth")
            }

            TextSwitch {
                text: qsTr("Usage logs")
                description: qsTr("Send diagnostic data to Pebble")
                //checked: settings.alwaysSendNotifications
                automaticCheck: false
                onClicked: {
                    // settings.alwaysSendNotifications = !settings.alwaysSendNotifications;
                }
            }
            Button {
                width: parent.width
                text: qsTr("Voice Settings")
            }
            Label {
                text: qsTr("Auto App Updates")
                font.family: Theme.fontFamilyHeading
                color: Theme.highlightColor
            }
            TextSwitch {
                text: qsTr("Auto-Update via WiFi-Only")
                description: qsTr("To reduce carrier data charges, don't update apps over mobile networks")
                //checked: settings.alwaysSendNotifications
                automaticCheck: false
                onClicked: {
                    // settings.alwaysSendNotifications = !settings.alwaysSendNotifications;
                }
            }
            Label {
                text: qsTr("Developer")
                font.family: Theme.fontFamilyHeading
                color: Theme.highlightColor
            }
            TextSwitch {
                text: qsTr("Developer Connection")
                description: qsTr("Enables developer communication service.")
                //checked: settings.alwaysSendNotifications
                automaticCheck: false
                onClicked: {
                    // settings.alwaysSendNotifications = !settings.alwaysSendNotifications;
                }
            }
            Label {
                text: qsTr("About")
                font.family: Theme.fontFamilyHeading
                color: Theme.highlightColor
            }
            // TODO: about
        }
    }


    /*

    Button {
        text: qsTr("Get Connected Pebble Info")
        anchors.bottom: parent.bottom
        width: parent.width
        onClicked: {
            python.getInfo();
        }
    }

    Python {
        id: python

        Component.onCompleted: {
            addImportPath(Qt.resolvedUrl('../py'));

            setHandler('progress', function(ratio) {
                dlprogress.value = ratio;
            });
            setHandler('finished', function(newvalue) {
                page.downloading = false;
                mainLabel.text = newvalue;
            });

	    importModule('sinker', function () {});

        }

        function startDownload() {
            page.downloading = true;
            dlprogress.value = 0.0;
	    call('sinker.pebble_mobile_app.get_serial', function() {});
        }

        onError: {
            // when an exception is raised, this error handler will be called
            console.log('python error: ' + traceback);
        }

        onReceived: {
            // asychronous messages from Python arrive here
            // in Python, this can be accomplished via pyotherside.send()
            console.log('got message from python: ' + data);
        }
    }
    */
}


