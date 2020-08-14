import QtQuick 2.0
import Felgo 3.0



Navigation {
    id: navigation
    x: 142
    y: 24
    width: 480
    height: 800

    NavigationItem {
        id: navigationItem
        width: 480
        height: 800
        NavigationStack {
            id: navigationStack
            width: 480
            height: 800
            opacity: 1
Page {
    id: page
    width: 480
    height: 800
    backgroundColor: "#ffffff"

    anchors.top: parent.top
    anchors.topMargin: 30

    
    AppText {
        id: appText
        width: 100
        height: 50
        text: qsTr("Albums")
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 50
        font.pointSize: 15
        font.bold: true
        font.family: "Arial"
        verticalAlignment: Text.AlignVCenter

        AppButton {
            id: appButton
            width: 100
            height: 50
            opacity: 0
            onClicked: {stack.pop()}
        }
    }
    
    
    Rectangle {
        id: rectangle7
        x: 152
        width: 120
        height: 30
        color: "#a9a9a9"
        radius: 20
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 30
        AppText {
            id: appText6
            width: 120
            height: 30
            color: "#000000"
            text: qsTr("+ Today")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 10
            AppButton {
                id: appButton4
                width: 120
                height: 30
                opacity: 0
                onClicked: {
                             navigationStack.push(Qt.resolvedUrl("takephoto.qml"))}
            }
            font.family: "Arial"
            font.bold: false
        }
        border.width: 0
        anchors.topMargin: 50
    }
    
    Rectangle {
        id: rectangle8
        x: 146
        y: -7
        width: 150
        height: 30
        color: "#696969"
        radius: 20
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.rightMargin: 30
        AppText {
            id: appText7
            width: 150
            height: 30
            color: "#fbfbfb"
            text: qsTr("New Album +")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 10
            AppButton {
                id: appButton5
                width: 150
                height: 30
                opacity: 0
                onClicked: {
                             navigationStack.push(Qt.resolvedUrl("newalbum.qml"))}
            }
            font.family: "Arial"
            font.bold: false
        }
        border.width: 0
        anchors.topMargin: 100
    }

    RoundedImage {
        id: roundedImage
        width: 400
        height: 600
        radius: 20
        source: "../assets/z.png"
        fillMode: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30


        AppText {
            id: appText14
            x: 30
            y: 10
            width: 150
            height: 40
            color: "#ffffff"
            text: qsTr("Roccat")
            anchors.left: parent.left
            font.bold: true
            font.pointSize: 16
            anchors.topMargin: 10
            font.family: "Arial"
            verticalAlignment: Text.AlignTop
            anchors.leftMargin: 20
            anchors.top: parent.top
        }


        AppText {
            id: appText15
            x: 60
            y: 61
            width: 100
            height: 20
            color: "#fbfbfb"
            text: qsTr("20 pictures")
            anchors.left: parent.left
            anchors.topMargin: 50
            anchors.leftMargin: 20
            anchors.top: parent.top
        }




        Rectangle {
            id: rectangle1
            x: 73
            y: 606
            width: 400
            height: 120
            color: "#99000000"
            radius: 20
            border.width: 0
            Rectangle {
                id: rectangle10
                width: 40
                height: 30
                color: "#a9a9a9"
                radius: 10
                anchors.left: parent.left
                AppText {
                    id: appText16
                    width: 40
                    height: 30
                    color: "#fbfbfb"
                    text: qsTr("DD")
                    font.pointSize: 12
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                anchors.topMargin: 20
                anchors.leftMargin: 20
                anchors.top: parent.top
            }

            Rectangle {
                id: rectangle11
                x: -5
                y: 9
                width: 60
                height: 30
                color: "#a9a9a9"
                radius: 10
                anchors.left: parent.left
                AppText {
                    id: appText17
                    width: 60
                    height: 30
                    color: "#fbfbfb"
                    text: qsTr("MMM")
                    font.pointSize: 12
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                anchors.topMargin: 20
                anchors.leftMargin: 70
                anchors.top: parent.top
            }

            Rectangle {
                id: rectangle12
                x: -9
                y: -6
                width: 40
                height: 30
                color: "#a9a9a9"
                radius: 10
                anchors.left: parent.left
                AppText {
                    id: appText18
                    width: 40
                    height: 30
                    color: "#fbfbfb"
                    text: qsTr("YY")
                    font.pointSize: 12
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                anchors.topMargin: 20
                anchors.leftMargin: 140
                anchors.top: parent.top
            }

            AppText {
                id: appText19
                x: 197
                width: 30
                height: 30
                color: "#fbfbfb"
                text: qsTr("-")
                font.bold: true
                anchors.topMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.top: parent.top
            }

            Rectangle {
                id: rectangle13
                x: -9
                y: -9
                width: 40
                height: 30
                color: "#a9a9a9"
                radius: 10
                anchors.left: parent.left
                AppText {
                    id: appText20
                    width: 40
                    height: 30
                    color: "#fbfbfb"
                    text: qsTr("DD")
                    font.pointSize: 12
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                anchors.topMargin: 20
                anchors.leftMargin: 220
                anchors.top: parent.top
            }

            Rectangle {
                id: rectangle14
                x: -14
                y: 0
                width: 60
                height: 30
                color: "#a9a9a9"
                radius: 10
                anchors.left: parent.left
                AppText {
                    id: appText21
                    width: 60
                    height: 30
                    color: "#fbfbfb"
                    text: qsTr("MMM")
                    font.pointSize: 12
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                anchors.topMargin: 20
                anchors.leftMargin: 270
                anchors.top: parent.top
            }

            Rectangle {
                id: rectangle15
                x: -18
                y: -15
                width: 40
                height: 30
                color: "#a9a9a9"
                radius: 10
                anchors.left: parent.left
                AppText {
                    id: appText22
                    width: 40
                    height: 30
                    color: "#fbfbfb"
                    text: qsTr("YY")
                    font.pointSize: 12
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                anchors.topMargin: 20
                anchors.leftMargin: 340
                anchors.top: parent.top
            }

            AppText {
                id: appText23
                x: 190
                y: -2
                width: 360
                height: 30
                color: "#fbfbfb"
                text: qsTr("XX years XX months XX days")
                font.pointSize: 10
                font.bold: true
                font.wordSpacing: 0
                anchors.topMargin: 50
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.top: parent.top
                font.letterSpacing: 0
            }

            AppText {
                id: appText24
                x: 181
                y: 4
                width: 360
                height: 30
                color: "#fbfbfb"
                text: qsTr("Age XX - Age XX X,XXX Photos")
                font.pointSize: 10
                font.bold: true
                font.wordSpacing: 0
                anchors.topMargin: 80
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.top: parent.top
                font.letterSpacing: 0
            }
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
        }

        AppButton {
            id: appButton2
            width: 400
            height: 600
            opacity: 0
            onClicked: {
                navigationStack.push(Qt.resolvedUrl("gallery.qml"))}
        }

        AppImage {
            id: appImage4
            width: 50
            height: 50
            source: "../assets/zz.png"
            anchors.right: parent.right
            AppButton {
                id: appButton1
                x: 0
                y: 0
                width: 40
                height: 40
                opacity: 0
                onClicked: {
                    navigationStack.push(Qt.resolvedUrl("albumedit.qml"))}
            }
            anchors.rightMargin: 20
            anchors.topMargin: 20
            fillMode: Image.PreserveAspectFit
            anchors.top: parent.top
        }

        AppImage {
            id: appImage5
            x: -4
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
            AppButton {
                id: appButton3
                x: 0
                y: 0
                width: 40
                height: 40
                opacity: 0
            }
            fillMode: Image.PreserveAspectFit
            source: "../assets/zz.png"
        }
    }
}
        }}}

/*##^##
Designer {
    D{i:34;anchors_y:"-1"}
}
##^##*/
