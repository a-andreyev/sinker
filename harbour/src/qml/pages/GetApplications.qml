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
                title: qsTr("Get Applications")
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


