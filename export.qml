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
    anchors.top: parent.top
    anchors.topMargin: 30
    backgroundColor: "#696969"



    AppText {
        id: appText
        width: 100
        height: 50
        color: "#fbfbfb"
        text: "Export"
        anchors.leftMargin: 50
        anchors.top: parent.top
        anchors.left: parent.left
        font.pointSize: 15
        font.family: "Arial"
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        anchors.topMargin: 80
    }

    AppImage {
        id: appImage
        x: 362
        width: 80
        height: 80
        anchors.top: parent.top
        anchors.topMargin: 50

        source: "../assets/zz.png"



        anchors.right: parent.right
        anchors.rightMargin: 30
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: rectangle
        x: 73
        y: 606
        width: 400
        height: 120
        color: "#99000000"
        radius: 20
        border.width: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 70
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            id: rectangle2
            width: 40
            height: 30
            color: "#a9a9a9"
            radius: 10
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.top: parent.top
            anchors.topMargin: 20

            AppText {
                id: appText1
                width: 40
                height: 30
                color: "#fbfbfb"
                text: qsTr("DD")
                font.pointSize: 12
                font.family: "Arial"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle {
            id: rectangle3
            x: -5
            y: 9
            width: 60
            height: 30
            color: "#a9a9a9"
            radius: 10
            anchors.leftMargin: 70
            anchors.top: parent.top
            AppText {
                id: appText2
                width: 60
                height: 30
                color: "#fbfbfb"
                text: qsTr("MMM")
                horizontalAlignment: Text.AlignHCenter
                font.family: "Arial"
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
            }
            anchors.left: parent.left
            anchors.topMargin: 20
        }

        Rectangle {
            id: rectangle4
            x: -9
            y: -6
            width: 40
            height: 30
            color: "#a9a9a9"
            radius: 10
            anchors.leftMargin: 140
            anchors.top: parent.top
            AppText {
                id: appText3
                width: 40
                height: 30
                color: "#fbfbfb"
                text: qsTr("YY")
                horizontalAlignment: Text.AlignHCenter
                font.family: "Arial"
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
            }
            anchors.left: parent.left
            anchors.topMargin: 20
        }

        AppText {
            id: appText4
            x: 197
            width: 30
            height: 30
            color: "#fbfbfb"
            text: qsTr("-")
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 20
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }

        Rectangle {
            id: rectangle5
            x: -9
            y: -9
            width: 40
            height: 30
            color: "#a9a9a9"
            radius: 10
            anchors.leftMargin: 220
            anchors.top: parent.top
            AppText {
                id: appText5
                width: 40
                height: 30
                color: "#fbfbfb"
                text: qsTr("DD")
                horizontalAlignment: Text.AlignHCenter
                font.family: "Arial"
                font.pointSize: 12
                verticalAlignment: Text.AlignVCenter
            }
            anchors.left: parent.left
            anchors.topMargin: 20
        }

        Rectangle {
            id: rectangle6
            x: -14
            y: 0
            width: 60
            height: 30
            color: "#a9a9a9"
            radius: 10
            anchors.leftMargin: 270
            anchors.top: parent.top
            AppText {
                id: appText6
                width: 60
                height: 30
                color: "#fbfbfb"
                text: qsTr("MMM")
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 12
                font.family: "Arial"
                verticalAlignment: Text.AlignVCenter
            }
            anchors.left: parent.left
            anchors.topMargin: 20
        }

        Rectangle {
            id: rectangle7
            x: -18
            y: -15
            width: 40
            height: 30
            color: "#a9a9a9"
            radius: 10
            anchors.leftMargin: 340
            anchors.top: parent.top
            AppText {
                id: appText7
                width: 40
                height: 30
                color: "#fbfbfb"
                text: qsTr("YY")
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 12
                font.family: "Arial"
                verticalAlignment: Text.AlignVCenter
            }
            anchors.left: parent.left
            anchors.topMargin: 20
        }

        AppText {
            id: appText8
            x: 190
            y: -2
            width: 360
            height: 30
            color: "#fbfbfb"
            text: qsTr("XX years XX months XX days")
            font.letterSpacing: 0
            font.wordSpacing: 0
            font.pointSize: 12
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: true
            anchors.topMargin: 50
        }

        AppText {
            id: appText9
            x: 181
            y: 4
            width: 360
            height: 30
            color: "#fbfbfb"
            text: qsTr("Age XX - Age XX X,XXX Photos")
            anchors.top: parent.top
            font.wordSpacing: 0
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 12
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            font.letterSpacing: 0
            anchors.topMargin: 80
        }
    }

    Rectangle {
        id: rectangle1
        x: 167
        y: 435
        width: 400
        height: 50
        color: "#a9a9a9"
        radius: 90
        border.width: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 200
        anchors.horizontalCenter: parent.horizontalCenter

        AppSlider {
            id: appSlider
            x: 0
            y: 0
            width: 360
            height: 30
            stepSize: 0.1
            knobColor: "#ffffff"
            tintedTrackColor: "#00ffffff"
            trackColor: "#ffffff"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter


        }
    }

    AppText {
        id: appText10
        width: 80
        height: 30
        color: "#fbfbfb"
        text: qsTr(" Return")
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.left: parent.left
        anchors.leftMargin: 30
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignLeft
        font.pointSize: 12
        AppButton {
            id: appButton3
            width: 100
            height: 30
            opacity: 0
            onClicked: {stack.pop()}
        }
        font.family: "Arial"
        font.bold: true
    }

    AppText {
        id: appText11
        x: 8
        y: 8
        width: 30
        height: 30
        color: "#fbfbfb"
        text: qsTr("<")
        anchors.top: parent.top
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 25
        AppButton {
            id: appButton4
            width: 100
            height: 30
            opacity: 0
             onClicked: {stack.pop()}
        }
        anchors.topMargin: 50
        font.family: "Arial"
        font.bold: false
        anchors.left: parent.left
        anchors.leftMargin: 0
    }

    Rectangle {
        id: rectangle8
        y: 463
        width: 100
        height: 30
        color: "#a9a9a9"
        radius: 20
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.bottom: parent.bottom
        AppText {
            id: appText12
            width: 100
            height: 30
            color: "#fbfbfb"
            text: qsTr("Preview")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 10
            AppButton {
                id: appButton2
                width: 100
                height: 30
                opacity: 0
                onClicked: {}
            }
            font.family: "Arial"
            font.bold: true
        }
        border.width: 0
        anchors.bottomMargin: 20
    }

    Rectangle {
        id: rectangle9
        x: 116
        width: 480
        height: 300
        color: "#000000"
        radius: 20
        border.width: 0
        anchors.top: parent.top
        anchors.topMargin: 200
        anchors.horizontalCenter: parent.horizontalCenter

        AppImage {
            id: appImage1
            x: 0
            y: 0
            width: 400
            height: 300

            source:"../assets/z.png"
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
        }
    }

}}}}
