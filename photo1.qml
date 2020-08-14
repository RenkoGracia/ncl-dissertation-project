import QtQuick 2.0
import Felgo 3.0


Navigation {
    id: navigation
    x: 142
    y: 24
    width: 480
    height: 800
    visible: true
    opacity: 1

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
        height: 800
        contentHeight: 800
        contentWidth: 500
        flickableDirection: Flickable.HorizontalFlick
        anchors.fill: parent

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
                id: rectangle4
                x: 98
                y: 300
                width: 400
                height: 150
                color: "#99000000"
                radius: 20
                opacity: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
            }

            Rectangle {
                id: rectangle8
                x: 280
                y: 550
                width: 100
                height: 30
                color: "#ffffff"
                radius: 20
                border.width: 0
                anchors.right: parent.right
                AppText {
                    id: appText29
                    width: 100
                    height: 30
                    color: "#696969"
                    text: qsTr("Re-Align")
                    font.bold: false
                    font.pointSize: 10
                    AppButton {
                        id: appButton9
                        width: 100
                        height: 30
                        opacity: 0
                        onClicked: {  navigationStack.push(Qt.resolvedUrl("photoedit.qml"))}
                    }
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                anchors.rightMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
            }

            Rectangle {
                id: rectangle9
                x: 278
                y: 553
                width: 100
                height: 30
                color: "#ffffff"
                radius: 20
                border.width: 0
                anchors.right: parent.right
                visible: true
                AppText {
                    id: appText30
                    width: 100
                    height: 30
                    color: "#696969"
                    text: qsTr("Save  ")
                    font.bold: false
                    font.pointSize: 10
                    AppButton {
                        id: appButton10
                        width: 100
                        height: 30
                        opacity: 0
                        onClicked: {appTextEdit.focus = false}
                    }
                    font.family: "Arial"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
                anchors.rightMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 100
            }

            AppImage {
                id: appImage10
                width: 30
                height: 40
                source: "../assets/zz.png"
                anchors.left: parent.left
                anchors.topMargin: 360
                anchors.leftMargin: 10
                fillMode: Image.Stretch
                anchors.top: parent.top
            }

            AppText {
                id: appText31
                x: 0
                y: 0
                width: 100
                height: 20
                color: "#ffffff"
                text: qsTr("HH:MM")
                anchors.left: parent.left
                font.bold: true
                font.pointSize: 10
                anchors.topMargin: 350
                anchors.leftMargin: 50
                verticalAlignment: Text.AlignVCenter
                anchors.top: parent.top
            }

            AppText {
                id: appText32
                x: 9
                y: -2
                width: 100
                height: 20
                color: "#ffffff"
                text: qsTr("City")
                anchors.left: parent.left
                font.bold: true
                font.pointSize: 10
                anchors.topMargin: 370
                anchors.leftMargin: 50
                verticalAlignment: Text.AlignVCenter
                anchors.top: parent.top
            }

            AppText {
                id: appText33
                x: 1
                y: -5
                width: 100
                height: 20
                color: "#ffffff"
                text: qsTr("Country")
                anchors.left: parent.left
                font.bold: true
                font.pointSize: 10
                anchors.topMargin: 390
                anchors.leftMargin: 50
                verticalAlignment: Text.AlignVCenter
                anchors.top: parent.top
            }

            AppImage {
                id: appImage11
                x: 0
                y: -4
                width: 30
                height: 30
                source: "../assets/zz.png"
                anchors.left: parent.left
                AppButton {
                    id: appButton11
                    width: 30
                    height: 30
                    opacity: 0
                    onClicked: {dialog1.open()}
                }
                anchors.topMargin: 20
                opacity: 1
                anchors.leftMargin: 20
                fillMode: Image.Stretch
                anchors.top: parent.top
            }

            Dialog {
                id: dialog1
                x: 60
                width: 0
                height: 0
                positiveActionLabel: ""
                Rectangle {
                    id: rectangle11
                    x: 0
                    y: 0
                    width: 300
                    height: 150
                    color: "#ffffff"
                    radius: 20
                    anchors.verticalCenter: parent.verticalCenter
                    AppText {
                        id: appText35
                        x: 0
                        width: 300
                        height: 30
                        text: qsTr("Delete Photograph")
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
                        id: appText36
                        x: 4
                        y: -5
                        width: 300
                        height: 50
                        text: "Are you sure you would like to delete this photograph?"
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
                        id: rectangle10
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
                        id: appText37
                        x: 0
                        y: 110
                        width: 150
                        height: 40
                        text: qsTr("Keep")
                        font.pointSize: 15
                        font.bold: false
                        AppButton {
                            id: appButton12
                            x: 0
                            y: 0
                            width: 150
                            height: 40
                            opacity: 0
                            onClicked: {dialog1.close()}
                        }
                        font.family: "Arial"
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                    AppText {
                        id: appText38
                        x: 6
                        y: 102
                        width: 150
                        height: 40
                        color: "#ff0000"
                        text: qsTr("Delete")
                        font.bold: false
                        font.pointSize: 15
                        anchors.right: parent.right
                        AppButton {
                            id: appButton13
                            x: 0
                            y: 0
                            width: 150
                            height: 40
                            opacity: 0
                            onClicked: {dialog1.close()

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

            AppTextEdit {
                id: appTextEdit
                y: 470
                width: 250
                height: 130
                color: "#ffffff"
                text: ""
                padding: 0
                placeholderText: "Edit Journal"
                cursorInView: true
                textFormat: Text.PlainText
                cursorVisible: true


                readOnly: false
                selectByKeyboard: false
                selectByMouse: true
                font.pointSize: 10
                placeholderColor: "#ffffff"
                cursorColor: "#ffffff"
                font.family: "Arial"
                wrapMode: Text.WrapAnywhere
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
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
            visible: true
            opacity: 0
            onClicked: { stack.pop()}
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
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 80
        anchors.top: parent.top
        font.pointSize: 12
    }
    
    AppText {
        id: appText14
        x: 9
        y: 6
        width: 50
        height: 20
        text: qsTr("Fri")
        anchors.right: parent.right
        anchors.rightMargin: 145
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 80
        anchors.top: parent.top
        font.pointSize: 12
    }
    
    AppText {
        id: appText15
        x: 3
        y: -7
        width: 50
        height: 20
        text: qsTr("Sat")
        anchors.right: parent.right
        anchors.rightMargin: 75
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 80
        anchors.top: parent.top
        font.pointSize: 12
    }
    
    AppText {
        id: appText16
        x: -5
        y: 9
        width: 50
        height: 20
        text: qsTr("Sun")
        anchors.right: parent.right
        anchors.rightMargin: 5
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 80
        anchors.top: parent.top
        font.pointSize: 12
    }
    
    AppText {
        id: appText17
        y: 2
        width: 50
        height: 20
        text: qsTr("02")
        anchors.left: parent.left
        anchors.leftMargin: 75
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 100
        anchors.top: parent.top
        font.pointSize: 12
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
        anchors.horizontalCenter: parent.horizontalCenter
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.topMargin: 100
        anchors.top: parent.top
        font.pointSize: 12
    }
    
    AppText {
        id: appText20
        x: 0
        y: -3
        width: 50
        height: 20
        text: qsTr("05")
        anchors.right: parent.right
        anchors.rightMargin: 145
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 100
        anchors.top: parent.top
        font.pointSize: 12
    }
    
    AppText {
        id: appText21
        x: 0
        y: 7
        width: 50
        height: 20
        text: qsTr("06")
        anchors.right: parent.right
        anchors.rightMargin: 75
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 100
        anchors.top: parent.top
        font.pointSize: 12
    }
    
    AppText {
        id: appText22
        x: 5
        y: 4
        width: 50
        height: 20
        text: qsTr("07")
        anchors.right: parent.right
        anchors.rightMargin: 5
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        opacity: 0.7
        anchors.topMargin: 100
        anchors.top: parent.top
        font.pointSize: 12
    }
    
    AppText {
        id: appText23
        x: 4
        y: 6
        width: 30
        height: 30
        color: "#696969"
        text: qsTr(">")
        anchors.right: parent.right
        anchors.rightMargin: 0
        AppButton {
            id: appButton7
            width: 30
            height: 30
            opacity: 0
            onClicked: {
                navigationStack.push(Qt.resolvedUrl("takephoto.qml"))}
        }
        font.bold: false
        anchors.topMargin: 50
        font.family: "Arial"
        anchors.top: parent.top
        font.pointSize: 25
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
    }
    
    AppText {
        id: appText24
        x: 0
        y: -5
        width: 80
        height: 30
        color: "#696969"
        text: qsTr("Today ")
        anchors.right: parent.right
        anchors.rightMargin: 30
        AppButton {
            id: appButton8
            width: 80
            height: 30
            opacity: 0
            onClicked: {
                navigationStack.push(Qt.resolvedUrl("takephoto.qml"))}
        }
        font.bold: false
        anchors.topMargin: 50
        font.family: "Arial"
        anchors.top: parent.top
        font.pointSize: 12
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignRight
    }

    RoundedImage {
        id: roundedImage1
        x: 5
        y: 5
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
        source: "../assets/j14-8-elesh-norn-grand-cenobite.jpg"
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
        source: "../assets/kld-163-nissa-vital-force.jpg"
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
        anchors.horizontalCenter: parent.horizontalCenter
        source: "../assets/z.png"
        anchors.topMargin: 120
        opacity: 1
    }

    RoundedImage {
        id: roundedImage5
        x: 3
        y: 8
        width: 40
        height: 40
        radius: 180
        anchors.top: parent.top
        anchors.rightMargin: 150
        fillMode: 180
        source: "../assets/m20-68-mu-yanling-sky-dancer.jpg"
        anchors.topMargin: 120
        opacity: 0.5
        anchors.right: parent.right
    }

    RoundedImage {
        id: roundedImage6
    x: 0
    y: -1
    width: 40
    height: 40
    radius: 180
    anchors.top: parent.top
    anchors.rightMargin: 80
    fillMode: 180
    source: "../assets/soi-5-archangel-avacyn.jpg"
    anchors.topMargin: 120
    opacity: 0.5
    anchors.right: parent.right
}

RoundedImage {
    id: roundedImage7
    x: -8
    y: -6
    width: 40
    height: 40
    radius: 180
    anchors.top: parent.top
    anchors.rightMargin: 10
    fillMode: 180
    source: "../assets/war-169★-nissa-who-shakes-the-world.jpg"
    anchors.topMargin: 120
    opacity: 0.5
    anchors.right: parent.right
}}}}}


