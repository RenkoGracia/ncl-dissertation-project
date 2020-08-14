    import Felgo 3.0
import QtQuick 2.0

App {
    width: 480
    height: 800
    visible: true


    Navigation {
        id: navigation
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.top: parent.top
     NavigationItem {
         id: navigationItem
         height: 800
         visible: false

         NavigationStack {
             id: navigationStack

            Page {
                id: loginpage
                width: 480
                height: 800
                anchors.top: parent.top
                anchors.topMargin: 0
                backgroundColor: "#696969"

                anchors.fill: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                AppImage {
                    id: appImage
                    width: 50
                    height: 50
                    anchors.top: parent.top
                    anchors.topMargin: 150
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "../assets/felgo-logo.png"
                    fillMode: Image.PreserveAspectFit
                }

                // background for input
                // input
                Rectangle {
                    id: rectangle
                    x: -150
                    y: -100
                    width: 400
                    height: 40

                    color: "#99000000"
                    radius: 10
                    border.width: 0
                    anchors.top: parent.top
                    anchors.topMargin: 250
                    anchors.horizontalCenter: parent.horizontalCenter
                    AppTextInput {
                        id: emailEdit
                        x: 0
                        y: 0
                        width: dp(200)
                        color: "#fbfbfb"
                        font.family: "Times New Roman"
                        anchors.verticalCenter: parent.verticalCenter
                        verticalAlignment: Text.AlignVCenter
                        opacity: 0.3
                        placeholderColor: "#fbfbfb"
                        placeholderText: " Email"
                    }
                }
                Rectangle {
                    id: rectangle1
                    x: -150
                    width: 400
                    height: 40

                    color: "#99000000"
                    radius: 10
                    border.width: 0
                    anchors.top: parent.top
                    anchors.topMargin: 300
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter

                    AppTextInput {
                        id: passwordEdit
                        x: 0
                        y: 0
                        width: dp(200)
                        color: "#fbfbfb"
                        anchors.verticalCenter: parent.verticalCenter
                        verticalAlignment: Text.AlignVCenter
                        opacity: 0.3
                        placeholderColor: "#fbfbfb"
                        font.family: "Times New Roman"
                        passwordMaskDelay: 0
                        placeholderText: " Password"
                    }
                }

                Rectangle {
                    id: rectangle3
                    x: 160
                    y: 470
                    width: 150
                    height: 40
                    color: "#a9a9a9"
                    radius: 20
                    anchors.bottom: parent.bottom
                    AppText {
                        id: appText
                        width: 150
                        height: 40
                        color: "#fbfbfb"
                        text: qsTr("Login")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 10
                        AppButton {
                            id: appButton1
                            width: 150
                            height: 40
                            opacity: 0

                            onClicked: {if(emailEdit.text==passwordEdit.text)
                                          navigationStack.push(Qt.resolvedUrl("myprofile.qml"))}

                        }
                        font.family: "Arial"
                        font.bold: false
                    }
                    border.width: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 250
                }

                Rectangle {
                    id: rectangle4
                    x: 155
                    y: 465
                    width: 150
                    height: 40
                    color: "#696969"
                    radius: 20
                    border.color: "#fbfbfb"
                    anchors.bottom: parent.bottom
                    AppText {
                        id: appText1
                        width: 150
                        height: 40
                        color: "#fbfbfb"
                        text: qsTr("Sign Up")
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        font.pointSize: 10
                        AppButton {
                            id: appButton2
                            width: 150
                            height: 40
                            opacity: 0
                            onClicked: {
                                navigationStack.push(Qt.resolvedUrl("createaccount.qml"))}

                        }
                        font.family: "Arial"
                        font.bold: false
                    }
                    border.width: 2
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottomMargin: 50
                }





            }

         }


     }
 }








}



