import QtQuick 2.0
import Felgo 3.0
import QtQuick.Layouts 1.3

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
    width: 480
    height: 800
    anchors.top: parent.top
    anchors.topMargin: 30
    id:page
    AppFlickable {
        id: appFlickable
        width: 480
        height: 600
        transformOrigin: Item.Center
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 120
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        flickableDirection: Flickable.VerticalFlick
        contentHeight: 1200
        contentWidth: 480
        scrollsToTop: false

        GridView {
            id: gridView
            width: 480
            height: 1200
            interactive: false
            boundsBehavior: Flickable.DragAndOvershootBounds
            contentHeight: 1200
            contentWidth: 480
            delegate: Item {

                width: 120
                height: 150

                Image {
                           id: photo
                           x: 0
                           width: 115
                           height: 145

                           anchors.horizontalCenter: parent.horizontalCenter
                           source: image
                    fillMode: Image.PreserveAspectCrop

                }
                MouseArea {
                            anchors.fill: parent
                            onClicked:
                            {

navigationStack.push(Qt.resolvedUrl("photo1.qml"))


}
                          }
            }
            cellWidth: 120
            cellHeight:150
            model: ListModel {
                id:photomodel

                ListElement {

                   image:"../assets/aer-31-disallow"

                }
                ListElement {
                    image:"../assets/avr-6-avacyn-angel-of-hope"
                }
                ListElement {
                    image:"../assets/bng-152-phenax-god-of-deception"
                }
                ListElement {
                    image:"../assets/grn-192-niv-mizzet-parun"
                }
                ListElement {
                    image:"../assets/grn-224-expansion"
                }
                ListElement {
                    image:"../assets/hou-140-nicol-bolas-god-pharaoh"
                }
                ListElement {
                    image:"../assets/hou-205-nicol-bolas-the-deceiver"
                }
                ListElement {
                    image:"../assets/j14-8-elesh-norn-grand-cenobite"
                }
                ListElement {
                    image:"../assets/kld-52-insidious-will"
                }
                ListElement {
                    image:"../assets/kld-163-nissa-vital-force"
                }
                ListElement {
                    image:"../assets/m15-3-avacyn-guardian-angel"
                }
                ListElement {
                    image:"../assets/m20-68-mu-yanling-sky-dancer"
                }

                ListElement {
                    image:"../assets/mp2-15-kefnet-the-mindful"
                }

                ListElement {
                    image:"../assets/ori-76-sphinx-s-tutelage"
                }
                ListElement {
                    image:"../assets/pana-1-ral-izzet-viceroy"
                }

                ListElement {
                    image:"../assets/pana-2-teferi-hero-of-dominaria"
                }
                ListElement {
                    image:"../assets/ps17-204-nissa-steward-of-elements"
                }

                ListElement {
                    image:"../assets/ps19-53-god-eternal-kefnet"
                }
                ListElement {
                    image:"../assets/ps19-207-nicol-bolas-dragon-god"
                }
                ListElement {
                    image:"../assets/rix-45-nezahal-primal-tide"
                }
                ListElement {
                    image:"../assets/rna-151-absorb"
                }
                ListElement {
                    image:"../assets/rtr-47-psychic-spiral"
                }
                ListElement {
                    image:"../assets/soi-5-archangel-avacyn"
                }
                ListElement {
                    image:"../assets/war-169★-nissa-who-shakes-the-world"
                }
                ListElement {
                    image:"../assets/war-228★-ashiok-dream-render"
                }

            }

        }
}

    AppText {
        id: appText10
        x: 3
        y: 3
        width: 80
        height: 30
        color: "#696969"
        text: qsTr(" Album")
        anchors.topMargin: 50
        font.bold: false
        verticalAlignment: Text.AlignVCenter
        AppButton {
            id: appButton3
            width: 80
            height: 30
            opacity: 0
            onClicked: {stack.pop()}
        }
        anchors.leftMargin: 30
        font.pointSize: 12
        horizontalAlignment: Text.AlignLeft
        anchors.left: parent.left
        font.family: "Arial"
        anchors.top: parent.top
    }

    AppText {
        id: appText11
        x: 8
        y: 8
        width: 30
        height: 30
        color: "#696969"
        text: qsTr("<")
        anchors.topMargin: 50
        font.bold: false
        verticalAlignment: Text.AlignVCenter
        AppButton {
            id: appButton4
            width: 30
            height: 30
            opacity: 0
            onClicked: {stack.pop()}
        }
        anchors.leftMargin: 0
        font.pointSize: 25
        horizontalAlignment: Text.AlignHCenter
        anchors.left: parent.left
        font.family: "Arial"
        anchors.top: parent.top
    }

    AppText {
        id: appText23
        x: 4
        y: 6
        width: 30
        height: 30
        color: "#696969"
        text: qsTr(">")
        font.bold: false
        anchors.topMargin: 50
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
        AppButton {
            id: appButton7
            width: 30
            height: 30
            opacity: 0
            onClicked: {navigationStack.push(Qt.resolvedUrl("export.qml"))}
        }
        font.pointSize: 25
        horizontalAlignment: Text.AlignHCenter
        font.family: "Arial"
        anchors.top: parent.top
        anchors.right: parent.right
    }

    AppText {
        id: appText24
        x: 0
        y: -5
        width: 80
        height: 30
        color: "#696969"
        text: qsTr(" Export")
        font.bold: false
        anchors.topMargin: 50
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 30
        AppButton {
            id: appButton8
            width: 80
            height: 30
            opacity: 0
             onClicked: {navigationStack.push(Qt.resolvedUrl("export.qml"))}
        }
        font.pointSize: 12
        horizontalAlignment: Text.AlignRight
        font.family: "Arial"
        anchors.top: parent.top
        anchors.right: parent.right
    }

    AppText {
        id: appText
        width: 120
        height: 30
        text: qsTr("Gallery")
        font.family: "Arial"
        font.bold: true
        font.pointSize: 15
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.top: parent.top
        anchors.topMargin: 50
        anchors.horizontalCenter: parent.horizontalCenter
    }
}

}}}


