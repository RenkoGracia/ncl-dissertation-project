import QtQuick 2.0
import Felgo 3.0



    Navigation {
        id: navigation
        x: 89
        y: -116
        width: 480
        height: 800

        NavigationItem {
            id: navigationItem
            width: 480
            height: 800

            NavigationStack {
                id: navigationStack
                Page {id:page
                    width: 480
                    height: 800
                    anchors.topMargin: 30
                    anchors.top: parent.top
                    backgroundColor: "#696969"


                    Rectangle {
                        id: rectangle
                        x: -150
                        y: -100
                        width: 400
                        height: 40
                        color: "#99000000"
                        radius: 10
                        anchors.top: parent.top
                        AppTextInput {
                            id: emailEdit
                            x: 0
                            y: 0
                            width: dp(200)
                            color: "#fbfbfb"
                            verticalAlignment: Text.AlignVCenter
                            placeholderText: " Email"
                            font.family: "Times New Roman"
                            anchors.verticalCenter: parent.verticalCenter
                            placeholderColor: "#fbfbfb"
                            opacity: 0.3
                        }
                        border.width: 0
                        anchors.topMargin: 250
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        id: rectangle1
                        x: -150
                        width: 400
                        height: 40
                        color: "#99000000"
                        radius: 10
                        anchors.top: parent.top
                        anchors.horizontalCenterOffset: 0
                        AppTextInput {
                            id: passwordEdit
                            x: 0
                            y: 0
                            width: dp(200)
                            color: "#fbfbfb"
                            verticalAlignment: Text.AlignVCenter
                            passwordMaskDelay: 0
                            placeholderText: " Password"
                            font.family: "Times New Roman"
                            anchors.verticalCenter: parent.verticalCenter
                            placeholderColor: "#fbfbfb"
                            opacity: 0.3
                        }
                        border.width: 0
                        anchors.topMargin: 300
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    AppImage {
                        id: appImage
                        width: 50
                        height: 50
                        anchors.top: parent.top
                        fillMode: Image.PreserveAspectFit
                        anchors.topMargin: 150
                        source: "../assets/felgo-logo.png"
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        id: rectangle2
                        x: -140
                        y: -6
                        width: 400
                        height: 40
                        color: "#99000000"
                        radius: 10
                        anchors.top: parent.top
                        anchors.horizontalCenterOffset: 0
                        AppTextInput {
                            id: passwordEdit1
                            x: 0
                            y: 0
                            width: dp(200)
                            color: "#fbfbfb"
                            verticalAlignment: Text.AlignVCenter
                            passwordMaskDelay: 0
                            placeholderText: " Confirm Password"
                            font.family: "Times New Roman"
                            anchors.verticalCenter: parent.verticalCenter
                            opacity: 0.3
                            placeholderColor: "#fbfbfb"
                        }
                        border.width: 0
                        anchors.topMargin: 350
                        anchors.horizontalCenter: parent.horizontalCenter
                    }

                    Rectangle {
                        id: rectangle3
                        x: 160
                        y: 470
                        width: 200
                        height: 40
                        color: "#a9a9a9"
                        radius: 20
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 300
                        border.width: 0

                        AppText {
                            id: appText
                            width: 200
                            height: 40
                            color: "#fbfbfb"
                            text: qsTr(" Create Account")
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.verticalCenter: parent.verticalCenter
                            font.bold: true
                            font.family: "Arial"
                            font.pointSize: 12
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter

                            AppButton {
                                id: appButton1
                                width: 200
                                height: 40
                                opacity: 0
                                onClicked: {
                                    if(passwordEdit.text==passwordEdit1.text)
                                    navigationStack.push(Qt.resolvedUrl("myprofile.qml"))}
                            }
                        }
                    }

                    AppText {
                        id: appText1
                        y: 609
                        width: 220
                        height: 30
                        color: "#a9a9a9"
                        text: qsTr("Already have an account?")
                        anchors.horizontalCenter: parent.horizontalCenter
                        wrapMode: Text.NoWrap
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 10
                        font.bold: true
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 80
                    }

                    AppText {
                        id: appText2
                        y: -4
                        width: 120
                        height: 30
                        color: "#fbfbfb"
                        text: qsTr("Login now")
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 40
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 12
                        AppButton {
                            id: appButton2
                            width: 100
                            height: 30
                            opacity: 0
                            onClicked: {
                             stack.pop()}

                        }
                        font.family: "Arial"
                        font.bold: false
                    }
            }
        }
    }

}
