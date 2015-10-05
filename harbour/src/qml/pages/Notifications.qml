import QtQuick 2.0
import Sailfish.Silica 1.0
import io.thp.pyotherside 1.4
import org.nemomobile.configuration 1.0

Page {

    id: page

    ConfigurationGroup {
        id: settings
        path: "/org/sinker/settings"
        property bool alwaysSendNotifications
    }

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height
        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Notifications")
            }
            // TODO: rewrite similar to Settings Menu:
            Label {
                text: qsTr("General")
                font.family: Theme.fontFamilyHeading
                color: Theme.highlightColor
            }
            TextSwitch {
                text: qsTr("Always send notifications")
                description: qsTr("Send notifications when phone's screen is on")
                //checked: settings.alwaysSendNotifications
                automaticCheck: false
                onClicked: {
                    //settings.alwaysSendNotifications = !settings.alwaysSendNotifications;
                }
            }
            TextSwitch {
                text: qsTr("Send 3rd party notifications")
                description: qsTr("Allow 3rd party apps to send notifications to your Pebble")
                //checked: settings.allow3rdPartyNotifications
                automaticCheck: true
                onClicked: {
                    //settings.allow3rdPartyNotifications = !settings.allow3rdPartyNotifications;
                }
            }
            Label {
                text: qsTr("Phone Notifications")
                font.family: Theme.fontFamilyHeading
                color: Theme.highlightColor
            }
            TextSwitch {
                text: qsTr("Incoming Calls")
                description: qsTr("Forward incoming call alerts")
                //checked: settings.forwardIncomingCalls
                automaticCheck: true
                onClicked: {
                    //settings.forwardIncomingCalls = !settings.forwardIncomingCalls;
                }
            }
            TextSwitch {
                text: qsTr("SMS Messages")
                description: qsTr("Forward SMS Messages")
                //checked: settings.forwardSMSMessages
                automaticCheck: true
                onClicked: {
                    //settings.forwardSMSMessages = !settings.forwardSMSMessages;
                }
            }
            Label {
                text: qsTr("Other Apps")
                font.family: Theme.fontFamilyHeading
                color: Theme.highlightColor
            }
            // TODO: Other Apps List:
            Label {
                text: qsTr("Responces")
                font.family: Theme.fontFamilyHeading
                color: Theme.highlightColor
            }
            Button {
                text: qsTr("Notification responces")
                width: parent.width
            }
            Button {
                text: qsTr("Actionable Notifications Setup")
                width: parent.width
            }

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


