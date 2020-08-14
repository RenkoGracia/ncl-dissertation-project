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
    backgroundColor: "#ffffff"

    AppFlickable {
        contentHeight: 800
        contentWidth: 500
        flickableDirection: Flickable.HorizontalFlick
        anchors.fill: parent
        Rectangle {
            id: rectangle
            x: 125
            y: 340
            width: 400
            height: 600
            color: "#a9a9a9"
            radius: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 30
            anchors.horizontalCenter: parent.horizontalCenter
            border.width: 0

            Rectangle {
                id: rectangle1
                x: 0
                y: 92
                width: 360
                height: 100
                color: "#696969"
                radius: 20
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 140
                border.width: 0
                anchors.horizontalCenter: parent.horizontalCenter

                AppText {
                    id: appText1
                    x: 0
                    y: 0
                    width: 360
                    height: 100
                    color: "#ffffff"
                    text: qsTr("Upload Image")
                    font.pointSize: 10
                    font.family: "Arial"
                    font.bold: true
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                    AppButton {
                        id: appButton1
                        width: 360
                        height: 100
                        opacity: 0
                    }
                }
            }

            Rectangle {
                id: rectangle2
                x: -2
                y: 92
                width: 360
                height: 100
                color: "#696969"
                radius: 20
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.horizontalCenter: parent.horizontalCenter
                border.width: 0

                AppText {
                    id: appText2
                    x: 0
                    y: 0
                    width: 360
                    height: 100
                    color: "#ffffff"
                    text: qsTr("Take Photograph")
                    font.bold: true
                    font.pointSize: 10
                    horizontalAlignment: Text.AlignHCenter
                    font.family: "Arial"
                    verticalAlignment: Text.AlignVCenter

                    AppButton {
                        id: appButton
                        width: 360
                        height: 10000
                        opacity: 0
                    }
                }
            }

            Rectangle {
                id: rectangle3
                y: 0
                width: 360
                height: 100
                color: "#696969"
                radius: 20
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.top: parent.top
                border.width: 0
                anchors.topMargin: 20

                AppTextInput {
                    id: appTextInput
                    width: 340
                    height: 80
                    wrapMode: Text.WordWrap
                    font.family: "Arial"
                    placeholderColor: "#ffffff"
                    opacity: 0.3
                    font.pointSize: 10
                    placeholderText: "Add Journal"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }

            Rectangle {
                id: rectangle4
                x: -6
                y: -3
                width: 360
                height: 80
                color: "#696969"
                radius: 20
                visible: true
                anchors.top: parent.top
                AppTextInput {
                    id: appTextInput1
                    width: 340
                    height: 60
                    wrapMode: Text.WordWrap
                    font.family: "Arial"
                    opacity: 0.3
                    placeholderColor: "#ffffff"
                    anchors.horizontalCenter: parent.horizontalCenter
                    placeholderText: "Add City"
                    font.pointSize: 10
                    anchors.verticalCenter: parent.verticalCenter
                }
                anchors.left: parent.left
                border.width: 0
                anchors.leftMargin: 20
                anchors.topMargin: 140
            }

            Rectangle {
                id: rectangle5
                x: 0
                y: 2
                width: 360
                height: 80
                color: "#696969"
                radius: 20
                anchors.top: parent.top
                visible: true
                AppTextInput {
                    id: appTextInput2
                    width: 340
                    height: 60
                    wrapMode: Text.WordWrap
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignLeft
                    opacity: 0.3
                    placeholderColor: "#ffffff"
                    anchors.horizontalCenter: parent.horizontalCenter
                    placeholderText: "Add Country"
                    font.pointSize: 10
                    anchors.verticalCenter: parent.verticalCenter
                }
                anchors.left: parent.left
                border.width: 0
                anchors.leftMargin: 20
                anchors.topMargin: 240
            }
        }

    }

    AppText {
        id: appText10
        width: 80
        height: 30
        color: "#696969"
        text: qsTr(" Return")
        AppButton {
            id: appButton3
            width: 80
            height: 30
            opacity: 0
             onClicked: {stack.pop()}
        }
        anchors.topMargin: 50
        font.bold: false
        font.family: "Arial"
        anchors.leftMargin: 30
        anchors.top: parent.top
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 12
        anchors.left: parent.left
        horizontalAlignment: Text.AlignLeft
    }

    AppText {
        id: appText11
        x: 8
        y: 8
        width: 30
        height: 30
        color: "#696969"
        text: qsTr("<")
        AppButton {
            id: appButton4
            width: 30
            height: 30
            opacity: 0
            onClicked: {stack.pop()}
        }
        anchors.topMargin: 50
        font.bold: false
        font.family: "Arial"
        anchors.leftMargin: 0
        anchors.top: parent.top
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 25
        anchors.left: parent.left
        horizontalAlignment: Text.AlignHCenter
    }

    AppText {
        id: appText
        width: 100
        height: 30
        color: "#696969"
        text: qsTr("September")
        font.family: "Arial"
        font.bold: true
        font.pointSize: 12
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
    }

    AppText {
        id: appText7
        width: 50
        height: 20
        text: qsTr("Mon")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        font.pointSize: 12
        anchors.left: parent.left
        anchors.leftMargin: 5
        anchors.top: parent.top
        anchors.topMargin: 80
    }

    AppText {
        id: appText8
        x: 3
        y: 0
        width: 50
        height: 20
        text: qsTr("01")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 100
        anchors.leftMargin: 5
        anchors.top: parent.top
        font.pointSize: 12
        anchors.left: parent.left
    }

    AppText {
        id: appText9
        x: -9
        y: 1
        width: 50
        height: 20
        text: qsTr("Tue")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 80
        anchors.leftMargin: 75
        anchors.top: parent.top
        font.pointSize: 12
        anchors.left: parent.left
    }

    AppText {
        id: appText12
        x: 7
        y: -2
        width: 50
        height: 20
        text: qsTr("Wed")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 80
        anchors.leftMargin: 145
        anchors.top: parent.top
        font.pointSize: 12
        anchors.left: parent.left
    }

    AppText {
        id: appText13
        x: -5
        y: 3
        width: 50
        height: 20
        text: qsTr("Thu")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 80
        anchors.leftMargin: 215
        anchors.top: parent.top
        font.pointSize: 12
        anchors.left: parent.left
    }

    AppText {
        id: appText17
        x: -5
        y: 2
        width: 50
        height: 20
        text: qsTr("02")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 100
        anchors.leftMargin: 75
        anchors.top: parent.top
        font.pointSize: 12
        anchors.left: parent.left
    }

    AppText {
        id: appText18
        x: 10
        y: -9
        width: 50
        height: 20
        text: qsTr("03")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 100
        anchors.leftMargin: 145
        anchors.top: parent.top
        font.pointSize: 12
        anchors.left: parent.left
    }

    AppText {
        id: appText19
        x: 7
        y: -8
        width: 50
        height: 20
        text: qsTr("04")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 100
        anchors.leftMargin: 215
        anchors.top: parent.top
        font.pointSize: 12
        anchors.left: parent.left
    }

    RoundedImage {
        id: roundedImage1
        x: 0
        y: 0
        width: 40
        height: 40
        radius: 180
        anchors.top: parent.top
        fillMode: 180
        source: "../assets/avr-6-avacyn-angel-of-hope.jpg"
        anchors.leftMargin: 10
        anchors.left: parent.left
        anchors.topMargin: 120
        opacity: 0.5
    }

    RoundedImage {
        id: roundedImage2
        x: -8
        y: 0
        width: 40
        height: 40
        radius: 180
        anchors.top: parent.top
        fillMode: 180
        source: "../assets/m20-68-mu-yanling-sky-dancer.jpg"
        anchors.leftMargin: 80
        anchors.left: parent.left
        anchors.topMargin: 120
        opacity: 0.5
    }

    RoundedImage {
        id: roundedImage3
        x: -9
        y: -3
        width: 40
        height: 40
        radius: 180
        anchors.top: parent.top
        fillMode: 180
        source: "../assets/soi-5-archangel-avacyn.jpg"
        anchors.leftMargin: 150
    anchors.left: parent.left
    anchors.topMargin: 120
    opacity: 0.5
}

RoundedImage {
    id: roundedImage4
    y: -9
    width: 40
    height: 40
    radius: 180
    anchors.top: parent.top
    fillMode: 180
    backgroundColor: "#696969"
    source: ""
    anchors.leftMargin: 220
    anchors.left: parent.left
    anchors.topMargin: 120
    opacity: 1
}}}}}


