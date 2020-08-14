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


                AppImage {
                    id: appImage
                    x: 0+(appSlider2.value-0.5)*200
                    //y: 0+(appSlider1.value-0.5)*200
                    scale: appSlider.value*(appSlider.value+0.5)+0.5

                    width: 480
                    height: 480
                    anchors.top: parent.top
                    anchors.topMargin: 100+(appSlider1.value-0.5)*200
                    fillMode: Image.PreserveAspectFit
                    source: "../assets/z.png"

                }

                Rectangle {
                    id: rectangle1
                    x: 167
                    y: 435
                    width: 260
                    height: 40
                    color: "#a9a9a9"
                    radius: 90
                    AppSlider {
                        id: appSlider
                        x: 0
                        y: 0
                        width: 240
                        height: 20
                        state: ""
                        stepSize: 0.1
                        knobBorderColor: "#ffffff"
                        value: 0.5
                        anchors.verticalCenter: parent.verticalCenter
                        knobColor: "#ffffff"
                        tintedTrackColor: "#00ffffff"
                        anchors.horizontalCenter: parent.horizontalCenter
                        trackColor: "#ffffff"

                    }
                    anchors.bottom: parent.bottom
                    border.width: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 20
                }

                Rectangle {
                    id: rectangle2
                    x: 176
                    y: 425
                    width: 260
                    height: 40
                    color: "#a9a9a9"
                    radius: 90
                    AppSlider {
                        id: appSlider1
                        x: 0
                        y: 0
                        width: 240
                        height: 20
                        stepSize: 0.1
                        value: 0.5
                        anchors.verticalCenter: parent.verticalCenter
                        tintedTrackColor: "#00ffffff"
                        knobColor: "#ffffff"
                        anchors.horizontalCenter: parent.horizontalCenter
                        trackColor: "#ffffff"
                    }
                    anchors.bottom: parent.bottom
                    border.width: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 80
                }

                Rectangle {
                    id: rectangle3
                    x: 157
                    y: 438
                    width: 260
                    height: 40
                    color: "#a9a9a9"
                    radius: 90
                    AppSlider {
                        id: appSlider2
                        x: 0
                        y: 0
                        width: 240
                        height: 20
                        stepSize: 0.1
                        value: 0.5
                        anchors.verticalCenter: parent.verticalCenter
                        tintedTrackColor: "#00ffffff"
                        knobColor: "#ffffff"
                        anchors.horizontalCenter: parent.horizontalCenter
                        trackColor: "#ffffff"
                    }
                    anchors.bottom: parent.bottom
                    border.width: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 140
                }

                AppText {
                    id: appText
                    y: 197
                    width: 80
                    height: 40
                    text: "Left"
                    font.family: "Arial"
                    font.pointSize: 15
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 140
                    anchors.left: parent.left
                    anchors.leftMargin: 15
                }

                AppText {
                    id: appText1
                    x: 9
                    y: 192
                    width: 80
                    height: 40
                    text: "Down"
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 15
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 15
                    anchors.left: parent.left
                    anchors.bottom: parent.bottom
                    font.family: "Arial"
                    anchors.bottomMargin: 80
                }

                AppText {
                    id: appText2
                    x: -4
                    y: 201
                    width: 80
                    height: 40
                    text: "Small"
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 15
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 15
                    anchors.left: parent.left
                    anchors.bottom: parent.bottom
                    font.family: "Arial"
                    anchors.bottomMargin: 20
                }

                AppText {
                    id: appText3
                    x: 231
                    y: 194
                    width: 80
                    height: 40
                    text: "Right"
                    anchors.right: parent.right
                    anchors.rightMargin: 15
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 15
                    anchors.bottom: parent.bottom
                    font.family: "Arial"
                    anchors.bottomMargin: 140
                }

                AppText {
                    id: appText4
                    x: 231
                    y: 195
                    width: 80
                    height: 40
                    text: "Up"
                    anchors.right: parent.right
                    anchors.rightMargin: 15
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 15
                    anchors.bottom: parent.bottom
                    font.family: "Arial"
                    anchors.bottomMargin: 80
                }

                AppText {
                    id: appText5
                    x: 231
                    y: 190
                    width: 80
                    height: 40
                    text: "Big"
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 20
                    anchors.right: parent.right
                    anchors.rightMargin: 15
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 15
                    font.family: "Arial"
                }

                AppText {
                    id: appText10
                    width: 80
                    height: 30
                    color: "#696969"
                    text: qsTr(" Return ")
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.topMargin: 50
                    font.bold: false
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 12
                    horizontalAlignment: Text.AlignLeft
                    font.family: "Arial"
                    anchors.top: parent.top

                    AppButton {
                        id: appButton
                        x: 0
                        y: 0
                        width: 80
                        height: 30
                        opacity: 0
                        onClicked: {stack.pop()}

                    }
                }

                AppText {
                    id: appText11
                    x: 8
                    y: 1
                    width: 80
                    height: 30
                    color: "#696969"
                    text: qsTr("Save ")
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    verticalAlignment: Text.AlignVCenter
                    font.bold: false
                    anchors.topMargin: 50
                    horizontalAlignment: Text.AlignRight
                    font.pointSize: 12
                    font.family: "Arial"
                    anchors.top: parent.top

                    AppButton {
                        id: appButton1
                        x: 0
                        y: 0
                        width: 80
                        height: 30
                        opacity: 0
                        onClicked: {stack.pop()}
                    }
                }

            }

        }}}

/*##^##
Designer {
    D{i:4;anchors_y:120}D{i:18;anchors_height:30;anchors_width:80;anchors_x:0;anchors_y:0}
D{i:17;anchors_width:80}D{i:20;anchors_width:80}
}
##^##*/
