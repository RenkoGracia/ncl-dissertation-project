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
    }

    Rectangle {
        id: rectangle3
        x: 156
        y: 119
        width: 400
        height: 600
        color: "#696969"
        radius: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0

        Rectangle {
            id: rectangle2
            x: -126
            y: 111
            width: 200
            height: 40
            color: "#99000000"
            radius: 10
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.topMargin: 230

            AppTextInput {
                id: appTextInput2
                width: 200
                height: 40
                color: "#fbfbfb"
                placeholderText: " Time"
                placeholderColor: "#fbfbfb"
            }
            anchors.top: parent.top
        }

        AppText {
            id: appText2
            x: -126
            y: 81
            color: "#a9a9a9"
            text: qsTr("Daily Reminder")
            anchors.topMargin: 200
            verticalAlignment: Text.AlignVCenter
            font.family: "Arial"
            anchors.leftMargin: 30
            anchors.top: parent.top
            font.pointSize: 10
            font.bold: true
            anchors.left: parent.left
        }

        Rectangle {
            id: rectangle1
            y: 11
            width: 300
            height: 40
            color: "#99000000"
            radius: 10
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 130

            AppTextInput {
                id: appTextInput1
                width: 300
                height: 40
                color: "#fbfbfb"
                placeholderText: " Date of Birth"
                placeholderColor: "#fbfbfb"
            }
        }

        Rectangle {
            id: rectangle
            y: -39
            width: 300
            height: 40
            color: "#99000000"
            radius: 10
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 80

            AppTextInput {
                id: appTextInput
                width: 300
                height: 40
                color: "#fbfbfb"
                placeholderText: " Name"
                placeholderColor: "#fbfbfb"
            }
        }

        AppText {
            id: appText1
            x: -126
            y: -109
            width: 150
            height: 50
            color: "#ffffff"
            text: qsTr("New Album")
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.top: parent.top
            anchors.topMargin: 10
            font.pointSize: 16
            font.bold: true
            font.family: "Arial"
            verticalAlignment: Text.AlignVCenter
        }

        AppSwitch {
            id: appSwitch
            x: 290
            y: 230
            width: 80
            height: 40
            anchors.right: parent.right
            anchors.rightMargin: 30
            knobColorOff: "#ff0000"
            knobColorOn: "#0bde1a"
        }

        Rectangle {
            id: rectangle4
            x: 160
            y: 470
            width: 360
            height: 40
            color: "#a9a9a9"
            radius: 20
            anchors.bottom: parent.bottom
            AppText {
                id: appText3
                width: 360
                height: 40
                color: "#fbfbfb"
                text: qsTr("Upload Cover Image")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 10
                AppButton {
                    id: appButton1
                    width: 360
                    height: 40
                    opacity: 0
                }
                font.family: "Arial"
                font.bold: true
            }
            border.width: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottomMargin: 100
        }

        Rectangle {
            id: rectangle5
            y: 463
            width: 100
            height: 30
            color: "#a9a9a9"
            radius: 20
            anchors.left: parent.left
            anchors.leftMargin: 30
            anchors.bottom: parent.bottom
            AppText {
                id: appText4
                width: 100
                height: 30
                color: "#fbfbfb"
                text: qsTr("Create")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 10
                AppButton {
                    id: appButton2
                    width: 100
                    height: 30
                    opacity: 0
                     onClicked: {


                         dialog1.open()}
                }
                font.family: "Arial"
                font.bold: true
            }
            border.width: 0
            anchors.bottomMargin: 30
        }

        Rectangle {
            id: rectangle6
            x: 152
            y: 463
            width: 100
            height: 30
            color: "#fbfbfb"
            radius: 20
            anchors.right: parent.right
            anchors.rightMargin: 30
            anchors.bottom: parent.bottom
            AppText {
                id: appText5
                width: 100
                height: 30
                color: "#a9a9a9"
                text: qsTr("Cancel")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 10
                AppButton {
                    id: appButton3
                    width: 100
                    height: 30
                    opacity: 0
                     onClicked: {dialog.open()}
                }
                font.family: "Arial"
                font.bold: true
            }
            border.width: 0
            anchors.bottomMargin: 30
        }

        Dialog {
            id: dialog
            x: 60
            width: 0
            height: 0
            Rectangle {
                id: rectangle10
                x: 0
                y: 0
                width: 300
                height: 150
                color: "#ffffff"
                radius: 20
                anchors.verticalCenter: parent.verticalCenter
                AppText {
                    id: appText25
                    x: 0
                    width: 300
                    height: 30
                    text: qsTr("Cancel New Album")
                    font.bold: true
                    font.pointSize: 12
                    anchors.topMargin: 5
                    font.family: "Arial"
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.top: parent.top
                }

                AppText {
                    id: appText26
                    x: 4
                    y: -5
                    width: 300
                    height: 50
                    text: "Are you sure you would like to cancel this album?"
                    font.pointSize: 10
                    font.bold: false
                    elide: Text.ElideNone
                    anchors.topMargin: 45
                    font.family: "Arial"
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignTop
                    anchors.top: parent.top
                }

                Rectangle {
                    id: rectangle8
                    x: 0
                    y: 0
                    width: 150
                    height: 40
                    color: "#00ffffff"
                    radius: 0
                    border.width: 1
                    opacity: 0.1
                    border.color: "#000000"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                Rectangle {
                    id: rectangle9
                    x: -7
                    y: 0
                    width: 150
                    height: 40
                    color: "#00ffffff"
                    radius: 0
                    border.width: 1
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    opacity: 0.1
                    border.color: "#000000"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                AppText {
                    id: appText27
                    x: 0
                    y: 110
                    width: 150
                    height: 40
                    text: qsTr("Keep")
                    font.bold: false
                    font.pointSize: 15
                    AppButton {
                        id: appButton5
                        x: 0
                        y: 0
                        width: 150
                        height: 40
                        opacity: 0
                         onClicked: {dialog.close()}
                    }
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                AppText {
                    id: appText28
                    x: 6
                    y: 102
                    width: 150
                    height: 40
                    color: "#ff0000"
                    text: qsTr("Cancel")
                    font.pointSize: 15
                    font.bold: false
                    anchors.right: parent.right
                    AppButton {
                        id: appButton6
                        x: 0
                        y: 0
                        width: 150
                        height: 40
                        opacity: 0
                         onClicked: {dialog.close()
                         stack.pop()}
                    }
                    anchors.rightMargin: 0
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }
                anchors.horizontalCenter: parent.horizontalCenter
            }
            anchors.topMargin: 200
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
        }

        Dialog {
            id: dialog1
            x: 54
            y: -1
            width: 0
            height: 0
            Rectangle {
                id: rectangle18
                x: 0
                y: 0
                width: 300
                height: 150
                color: "#ffffff"
                radius: 20
                anchors.verticalCenter: parent.verticalCenter
                AppText {
                    id: appText29
                    x: 0
                    width: 300
                    height: 30
                    text: qsTr("Need More Data")
                    font.bold: true
                    font.pointSize: 12
                    anchors.topMargin: 5
                    font.family: "Arial"
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.top: parent.top
                }

                AppText {
                    id: appText30
                    x: 4
                    y: -5
                    width: 300
                    height: 50
                    text: "Please enter all the information needed."
                    font.pointSize: 10
                    font.bold: false
                    elide: Text.ElideNone
                    anchors.topMargin: 45
                    font.family: "Arial"
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    anchors.top: parent.top
                }

                Rectangle {
                    id: rectangle16
                    x: 0
                    y: 0
                    width: 300
                    height: 40
                    color: "#00ffffff"
                    radius: 0
                    border.width: 1
                    opacity: 0.1
                    border.color: "#000000"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                }

                AppText {
                    id: appText31
                    x: 0
                    y: 110
                    width: 300
                    height: 40
                    text: qsTr("Return")
                    font.bold: false
                    font.pointSize: 15
                    AppButton {
                        id: appButton10
                        x: 0
                        y: 0
                        width: 300
                        height: 40
                        opacity: 0
                         onClicked: {dialog1.close()}
                    }
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                anchors.horizontalCenter: parent.horizontalCenter
            }
            anchors.topMargin: 200
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
        }








    }

    Rectangle {
        id: rectangle7
        x: 152
        width: 100
        height: 30
        color: "#a9a9a9"
        radius: 20
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.right: parent.right
        anchors.rightMargin: 30
        AppText {
            id: appText6
            width: 100
            height: 30
            color: "#000000"
            text: qsTr("Settings")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 10
            AppButton {
                id: appButton4
                width: 100
                height: 30
                opacity: 0
            }
            font.family: "Arial"
            font.bold: false
        }
        border.width: 0
    }













}}}}

/*##^##
Designer {
    D{i:23;anchors_y:34}D{i:21;anchors_y:140}D{i:31;anchors_y:140}D{i:33;anchors_y:34}
D{i:24;anchors_y:34}D{i:34;anchors_y:34}
}
##^##*/
