# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = sinker

CONFIG += sailfishapp

SOURCES += src/sinker.cpp

OTHER_FILES += qml/sinker.qml \
    qml/cover/CoverPage.qml \
    qml/cover/coveractions.py \
    qml/pages/FirstPage.qml \
    qml/pages/sinker.py \
    rpm/sinker.changes.in \
    rpm/sinker.spec \
    rpm/sinker.yaml \
    translations/*.ts \
    sinker.desktop

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/sinker-de.ts
