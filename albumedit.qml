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

    Rectangle {
        id: rectangle14
        x: 146
        y: -7
        width: 150
        height: 30
        color: "#696969"
        radius: 20
        anchors.top: parent.top
        AppText {
            id: appText12
            width: 150
            height: 30
            color: "#fbfbfb"
            text: "New Album +"
            font.bold: false
            font.pointSize: 10
            horizontalAlignment: Text.AlignHCenter
            font.family: "Arial"
            AppButton {
                id: appButton8
                width: 150
                height: 30
                opacity: 0
                onClicked: {
                    navigationStack.push(Qt.resolvedUrl("newalbum.qml"))}

            }
            verticalAlignment: Text.AlignVCenter
        }
        anchors.rightMargin: 30
        anchors.right: parent.right
        border.width: 0
        anchors.topMargin: 100
    }

    RoundedImage {
        id: roundedImage
        width: 400
        height: 600
        radius: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        source: "../assets/z.png"
        fillMode: 20

        Rectangle {
            id: rectangle21
            x: -126
            y: 111
            width: 200
            height: 40
            color: "#99000000"
            radius: 10
            anchors.left: parent.left
            AppTextInput {
                id: appTextInput6
                width: 200
                height: 40
                color: "#fbfbfb"
                text: " HH:MM"
                placeholderColor: "#fbfbfb"
                font.pointSize: 15
                placeholderText: ""
                verticalAlignment: Text.AlignVCenter
            }
            anchors.topMargin: 230
            anchors.leftMargin: 30
            anchors.top: parent.top
        }

        AppText {
            id: appText14
            x: -126
            y: 81
            color: "#a9a9a9"
            text: qsTr("Daily Reminder")
            anchors.left: parent.left
            font.bold: true
            font.pointSize: 10
            anchors.topMargin: 200
            font.family: "Arial"
            anchors.leftMargin: 30
            verticalAlignment: Text.AlignVCenter
            anchors.top: parent.top
        }

        Rectangle {
            id: rectangle22
            y: 11
            width: 300
            height: 40
            color: "#99000000"
            radius: 10
            anchors.left: parent.left
            AppTextInput {
                id: appTextInput7
                width: 300
                height: 40
                color: "#fbfbfb"
                text: " DD/MM/YYYY"
                placeholderColor: "#ffffff"
                font.pointSize: 15
                placeholderText: ""
                verticalAlignment: Text.AlignVCenter
            }
            anchors.topMargin: 130
            anchors.leftMargin: 30
            anchors.top: parent.top
        }

        Rectangle {
            id: rectangle23
            y: -39
            width: 300
            height: 40
            color: "#99000000"
            radius: 10
            anchors.left: parent.left
            AppTextInput {
                id: appTextInput8
                width: 300
                height: 40
                color: "#fbfbfb"
                text: " XXXX"
                placeholderColor: "#fbfbfb"
                font.pointSize: 15
                placeholderText: ""
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
            }
            anchors.topMargin: 80
            anchors.leftMargin: 30
            anchors.top: parent.top
        }

        AppText {
            id: appText15
            x: -126
            y: -109
            width: 150
            height: 40
            color: "#ffffff"
            text: qsTr("New Album")
            anchors.left: parent.left
            font.bold: true
            font.pointSize: 16
            anchors.topMargin: 10
            font.family: "Arial"
            anchors.leftMargin: 20
            verticalAlignment: Text.AlignVCenter
            anchors.top: parent.top
        }

        AppSwitch {
            id: appSwitch2
            x: 290
            y: 230
            width: 80
            height: 40
            knobColorOn: "#0bde1a"
            anchors.right: parent.right
            anchors.rightMargin: 30
            knobColorOff: "#ff0000"
        }

        Rectangle {
            id: rectangle4
            x: 106
            y: 400
            width: 400
            height: 150
            color: "#99000000"
            radius: 20
            border.width: 0
            opacity: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
        }

        Rectangle {
            id: rectangle24
            x: 160
            y: 470
            width: 360
            height: 40
            color: "#a9a9a9"
            radius: 20
            border.width: 0
            AppText {
                id: appText16
                width: 360
                height: 40
                color: "#fbfbfb"
                text: qsTr("Change Cover Image")
                font.bold: true
                font.pointSize: 10
                AppButton {
                    id: appButton13
                    width: 360
                    height: 40
                    opacity: 0
                }
                font.family: "Arial"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 90
        }

        Rectangle {
            id: rectangle25
            y: 463
            width: 100
            height: 30
            color: "#a9a9a9"
            radius: 20
            border.width: 0
            anchors.left: parent.left
            AppText {
                id: appText17
                width: 100
                height: 30
                color: "#fbfbfb"
                text: qsTr("Save")
                font.bold: true
                font.pointSize: 10
                AppButton {
                    id: appButton14
                    width: 100
                    height: 30
                    opacity: 0
                     onClicked: {dialog5.open()}
                }
                font.family: "Arial"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            anchors.leftMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
        }

        Rectangle {
            id: rectangle26
            x: 152
            y: 463
            width: 100
            height: 30
            color: "#fbfbfb"
            radius: 20
            border.width: 0
            AppText {
                id: appText18
                width: 100
                height: 30
                color: "#a9a9a9"
                text: qsTr("Cancel")
                font.bold: true
                font.pointSize: 10
                AppButton {
                    id: appButton15
                    width: 100
                    height: 30
                    opacity: 0
                     onClicked: {dialog4.open()}
                }
                font.family: "Arial"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
        }

        AppText {
            id: appText5
            x: 60
            y: 61
            width: 200
            height: 20
            color: "#fbfbfb"
            text: qsTr("300 pictures")
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 10
            anchors.left: parent.left
            anchors.topMargin: 50
            anchors.leftMargin: 20
            anchors.top: parent.top
        }

        Dialog {
            id: dialog3
            x: 60
            width: 0
            height: 0
            negativeAction: false
            Rectangle {
                id: rectangle27
                x: 0
                y: 0
                width: 300
                height: 150
                color: "#ffffff"
                radius: 20
                anchors.verticalCenter: parent.verticalCenter
                AppText {
                    id: appText36
                    x: 0
                    width: 200
                    height: 30
                    text: qsTr("Delete Album")
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
                    id: appText37
                    x: 4
                    y: -5
                    width: 300
                    height: 50
                    text: "Are you sure you would like to delete this album?"
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
                    id: rectangle5
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
                    id: rectangle6
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
                    id: appText38
                    x: 0
                    y: 110
                    width: 150
                    height: 40
                    text: qsTr("Keep")
                    font.bold: false
                    font.pointSize: 15
                    AppButton {
                        id: appButton3
                        x: 0
                        y: 0
                        width: 150
                        height: 40
                        opacity: 0
                         onClicked: {dialog3.close()}
                    }
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                AppText {
                    id: appText39
                    x: 6
                    y: 102
                    width: 150
                    height: 40
                    color: "#ff0000"
                    text: qsTr("Delete")
                    font.pointSize: 15
                    font.bold: false
                    anchors.right: parent.right
                    AppButton {
                        id: appButton16
                        x: 0
                        y: 0
                        width: 150
                        height: 40
                        opacity: 0
                         onClicked: {dialog3.close()
                         stack.pop()
                         }
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
            anchors.topMargin: 150
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
        }

        Rectangle {
            id: rectangle28
            x: 157
            y: 464
            width: 100
            height: 30
            color: "#fbfbfb"
            radius: 20
            border.width: 0
            anchors.right: parent.right
            AppText {
                id: appText19
                width: 100
                height: 30
                color: "#ff0000"
                text: qsTr("Delete")
                font.pointSize: 10
                font.bold: true
                AppButton {
                    id: appButton17
                    width: 100
                    height: 30
                    opacity: 0
                     onClicked: {dialog3.open()}
                }
                font.family: "Arial"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
            anchors.rightMargin: 20
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
        }

        Dialog {
            id: dialog4
            x: 54
            y: -1
            width: 0
            height: 0
            outsideTouchable: true
            Rectangle {
                id: rectangle31
                x: 0
                y: 0
                width: 300
                height: 150
                color: "#ffffff"
                radius: 20
                anchors.verticalCenter: parent.verticalCenter
                AppText {
                    id: appText40
                    x: 0
                    width: 200
                    height: 30
                    text: qsTr("Cancel Changes")
                    font.pointSize: 12
                    font.bold: true
                    anchors.topMargin: 5
                    font.family: "Arial"
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.top: parent.top
                }

                AppText {
                    id: appText41
                    x: 4
                    y: -5
                    width: 250
                    height: 50
                    text: "Changes are unsaved. Are you sure you would like to cancel?"
                    font.bold: false
                    font.pointSize: 10
                    elide: Text.ElideNone
                    anchors.topMargin: 45
                    font.family: "Arial"
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    anchors.top: parent.top
                }

                Rectangle {
                    id: rectangle29
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
                    id: rectangle30
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
                    id: appText42
                    x: 0
                    y: 110
                    width: 150
                    height: 40
                    text: qsTr("Keep")
                    font.pointSize: 15
                    font.bold: false
                    AppButton {
                        id: appButton18
                        x: 0
                        y: 0
                        width: 150
                        height: 40
                        opacity: 0
                         onClicked: {dialog4.close()}
                    }
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                AppText {
                    id: appText43
                    x: 6
                    y: 102
                    width: 150
                    height: 40
                    color: "#ff0000"
                    text: qsTr("Cancel")
                    font.bold: false
                    font.pointSize: 15
                    anchors.right: parent.right
                    AppButton {
                        id: appButton19
                        x: 0
                        y: 0
                        width: 150
                        height: 40
                        opacity: 0
                         onClicked: {dialog4.close()
                         stack.pop()
                         }
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
            anchors.topMargin: 150
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
        }

        Dialog {
            id: dialog5

            x: 60
            width: 0
            height: 0
            negativeAction: false
            Rectangle {
                id: rectangle33
                x: 0
                y: 0
                width: 300
                height: 150
                color: "#ffffff"
                radius: 20
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                AppText {
                    id: appText44
                    x: 0
                    width: 200
                    height: 30
                    text: qsTr("Need More Data")
                    font.bold: true
                    font.pointSize: 12
                    anchors.topMargin: 5
                    font.family: "Arial"
                    anchors.horizontalCenter: parent.horizontalCenter
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    anchors.top: parent.top
                }

                AppText {
                    id: appText45
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
                    id: rectangle32
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
                    id: appText46
                    x: 0
                    y: 110
                    width: 300
                    height: 40
                    text: qsTr("Return")
                    font.bold: false
                    font.pointSize: 15
                    AppButton {
                        id: appButton20
                        x: 0
                        y: 0
                        width: 300
                        height: 40
                        opacity: 0
                         onClicked: {dialog5.close()}
                    }
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            anchors.topMargin: 150
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
        }
    }
}}}}

/*##^##
Designer {
    D{i:29;anchors_y:140}D{i:31;anchors_y:34}D{i:32;anchors_y:34}D{i:52;anchors_y:140}
D{i:54;anchors_y:34}D{i:56;anchors_height:150;anchors_width:300;anchors_x:0;anchors_y:0}
D{i:55;anchors_y:34}
}
##^##*/
