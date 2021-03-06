# allows to add DEPLOYMENTFOLDERS and links to the Felgo library and QtCreator auto-completion
CONFIG += felgo felgo-live sql concurrent

# Project identifier and version
# More information: https://felgo.com/doc/felgo-publishing/#project-configuration
PRODUCT_IDENTIFIER = com.yourcompany.wizardEVAP.VoteElec
PRODUCT_VERSION_NAME = 1.0.0
PRODUCT_VERSION_CODE = 1

# Optionally set a license key that is used instead of the license key from
# main.qml file (App::licenseKey for your app or GameWindow::licenseKey for your game)
# Only used for local builds and Felgo Cloud Builds (https://felgo.com/cloud-builds)
# Not used if using Felgo Live
PRODUCT_LICENSE_KEY = ""

qmlFolder.source = app/qml
DEPLOYMENTFOLDERS += qmlFolder # comment for publishing

assetsFolder.source = app/assets
DEPLOYMENTFOLDERS += assetsFolder

# Add more folders to ship with the application here

# RESOURCES += resources.qrc # uncomment for publishing

# NOTE: for PUBLISHING, perform the following steps:
# 1. comment the DEPLOYMENTFOLDERS += qmlFolder line above, to avoid shipping your qml files with the application (instead they get compiled to the app binary)
# 2. uncomment the resources.qrc file inclusion and add any qml subfolders to the .qrc file; this compiles your qml files and js files to the app binary and protects your source code
# 3. change the setMainQmlFile() call in main.cpp to the one starting with "qrc:/" - this loads the qml files from the resources
# for more details see the "Deployment Guides" in the Felgo Documentation

# during development, use the qmlFolder deployment because you then get shorter compilation times (the qml files do not need to be compiled to the binary but are just copied)
# also, for quickest deployment on Desktop disable the "Shadow Build" option in Projects/Builds - you can then select "Run Without Deployment" from the Build menu in Qt Creator if you only changed QML files; this speeds up application start, because your app is not copied & re-compiled but just re-interpreted


# The .cpp file which was generated for your project. Feel free to hack it.
SOURCES += app/VoteElec.cpp \
    app/res/CandidateListModel.cpp \
    app/res/adresse.cpp \
    app/res/candidate.cpp \
    app/res/chartwinner.cpp \
    app/res/election.cpp \
    app/res/electionlistmodel.cpp \
    app/res/elector.cpp \
    app/res/fileio.cpp \
    app/res/person.cpp \
    app/res/vesqlquerymodel.cpp


android {
    ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
    OTHER_FILES += android/AndroidManifest.xml       android/build.gradle
}

ios {
    QMAKE_INFO_PLIST = ios/Project-Info.plist
    OTHER_FILES += $$QMAKE_INFO_PLIST
}

# set application icons for win and macx
win32 {
    RC_FILE += win/app_icon.rc
}
macx {
    ICON = macx/app_icon.icns
}

HEADERS += \
    app/res/User.h \
    app/res/adresse.h \
    app/res/candidate.h \
    app/res/candidateListModel.h \
    app/res/chartwinner.h \
    app/res/election.h \
    app/res/electionlistmodel.h \
    app/res/elector.h \
    app/res/fileio.h \
    app/res/person.h \
    app/res/vesqlquerymodel.h

DISTFILES += \
    app/qml/CandidateProgram.qml \
    app/qml/ListVotes.qml \
    app/qml/MainPage.qml \
    app/qml/SubmitVote.qml \
    app/qml/Test.qml \
    app/qml/logic/Logic.qml \
    app/qml/model/DataModel.qml \
    app/qml/pages/AdminPage.qml \
    app/qml/pages/CreateAccount.qml \
    app/qml/pages/Login.qml \
    app/qml/pages/Popup.qml \
    app/qml/pages/UserInfo.qml
