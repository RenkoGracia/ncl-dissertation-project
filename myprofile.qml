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
                            id: myprofile
                            width: 480
                            height: 800
                            anchors.top: parent.top
                            anchors.topMargin: 30


                            AppFlickable {
                                id: appFlickable
                                width: 480
                                height: 7200
                                transformOrigin: Item.Center
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                                anchors.topMargin: 120
                                anchors.bottom: parent.bottom
                                anchors.bottomMargin: 0
                                flickableDirection: Flickable.VerticalFlick
                                contentHeight: 7200
                                contentWidth: 480
                                scrollsToTop: false

                                GridView {
                                    id: gridView
                                    width: 480
                                    height: 7200
                                    interactive: false
                                    boundsBehavior: Flickable.DragAndOvershootBounds
                                    contentHeight: 7200
                                    contentWidth: 480
                                    delegate: Item {

                                        width: 240
                                        height: 240

                                        Image {

                                                   x: 0
                                                   width: 200
                                                   height: 200

                                                   anchors.horizontalCenter: parent.horizontalCenter
                                                   source: image
                                            fillMode: Image.PreserveAspectCrop

                                        }
                                        MouseArea {
                                                    anchors.fill: parent
                                                    onClicked: navigationStack.push(Qt.resolvedUrl("album.qml"))

                                                  }
                                    }
                                    cellWidth: 240
                                    cellHeight:240
                                    model: ListModel {
                                        id:albumModel
                                        ListElement {
                                           image:"../assets/aer-31-disallow"
                                        }
                                        ListElement {
                                           image:"../assets/avr-6-avacyn-angel-of-hope"
                                        }
                                        ListElement {
                                           image:"../assets/bng-152-phenax-god-of-deception"
                                        }







                                    }
                            }}

                            Rectangle {
                                id: rectangle7
                                x: 152
                                width: 100
                                height: 30
                                color: "#a9a9a9"
                                radius: 20
                                anchors.top: parent.top
                                AppText {
                                    id: appText6
                                    width: 100
                                    height: 30
                                    color: "#000000"
                                    text: qsTr("Log Out")
                                    font.bold: false
                                    font.pointSize: 10
                                    horizontalAlignment: Text.AlignHCenter
                                    font.family: "Arial"
                                    AppButton {
                                        id: appButton4
                                        width: 100
                                        height: 30
                                        opacity: 0
                                        onClicked: {
                                            stack.pop()
                                        }

                                    }
                                    verticalAlignment: Text.AlignVCenter
                                }
                                anchors.rightMargin: 35
                                anchors.right: parent.right
                                border.width: 0
                                anchors.topMargin: 40
                            }

                            AppText {
                                id: appText
                                width: 150
                                height: 50
                                text: qsTr("Albums")
                                anchors.top: parent.top
                                font.bold: true
                                font.pointSize: 20
                                font.family: "Arial"
                                anchors.left: parent.left
                                anchors.leftMargin: 50
                                anchors.topMargin: 50
                                verticalAlignment: Text.AlignTop
                            }

                            Rectangle {
                                id: rectangle8
                                x: 144
                                y: 4
                                width: 50
                                height: 30
                                color: "#a9a9a9"
                                radius: 20
                                anchors.rightMargin: 35
                                anchors.top: parent.top
                                anchors.topMargin: 80
                                AppText {
                                    id: appText7
                                    width: 50
                                    height: 30
                                    color: "#000000"
                                    text: qsTr("-")
                                    horizontalAlignment: Text.AlignHCenter
                                    font.family: "Arial"
                                    verticalAlignment: Text.AlignVCenter
                                    AppButton {
                                        id: appButton5
                                        width: 50
                                        height: 30
                                        opacity: 0
                                        onClicked: { albumModel.remove(albumModel.count-1,1)

                                        }
                                    }
                                    font.pointSize: 10
                                    font.bold: false
                                }
                                anchors.right: parent.right
                                border.width: 0
                            }

                            Rectangle {
                                id: rectangle9
                                x: 140
                                y: -4
                                width: 50
                                height: 30
                                color: "#a9a9a9"
                                radius: 20
                                anchors.rightMargin: 85
                                anchors.top: parent.top
                                anchors.topMargin: 80
                                AppText {
                                    id: appText8
                                    width: 50
                                    height: 30
                                    color: "#000000"
                                    text: qsTr("+")
                                    font.family: "Arial"
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                    AppButton {
                                        id: appButton6
                                        width: 50
                                        height: 30
                                        opacity: 0
                                        onClicked: {

                                             switch(albumModel.count%25)
                                             {case 0:
                                               albumModel.append({"image":"../assets/aer-31-disallow"});

                                                  break;
                                              case 1:

                                                  albumModel.append({"image":"../assets/avr-6-avacyn-angel-of-hope"});
                                                  break;

                                                case 2:
                                                     albumModel.append({"image":"../assets/bng-152-phenax-god-of-deception"});
                                                    break;
                                                     case 3:
                                                 albumModel.append({"image":"../assets/grn-192-niv-mizzet-parun"});
                                                    break;
                                                     case 4:
                                                 albumModel.append({"image":"../assets/grn-224-expansion"});
                                                    break;
                                                     case 5:
                                                 albumModel.append({"image":"../assets/hou-140-nicol-bolas-god-pharaoh"});
                                                    break;
                                                          case 6:
                                                 albumModel.append({"image":"../assets/hou-205-nicol-bolas-the-deceiver"});
                                                    break;
                                                               case 7:
                                                  albumModel.append({"image":"../assets/j14-8-elesh-norn-grand-cenobite"});
                                                    break;
                                                                    case 8:
                                                 albumModel.append({"image":"../assets/kld-52-insidious-will"});
                                                    break;
                                                                         case 9:
                                                  albumModel.append({"image":"../assets/kld-163-nissa-vital-force"});
                                                    break;
                                                                              case 10:
                                                  albumModel.append({"image":"../assets/m15-3-avacyn-guardian-angel"});
                                                    break;
                                                                                   case 11:
                                                  albumModel.append({"image":"../assets/m20-68-mu-yanling-sky-dancer"});
                                                    break;
                                                                                        case 12:
                                                 albumModel.append({"image":"../assets/mp2-15-kefnet-the-mindful"});
                                                    break;
                                                                                        case 13:
                                                 albumModel.append({"image":"../assets/ori-76-sphinx-s-tutelage"});
                                                    break;
                                                                                             case 14:
                                                  albumModel.append({"image":"../assets/pana-1-ral-izzet-viceroy"});
                                                    break;
                                                   case 15:

                                                albumModel.append({"image":"../assets/pana-2-teferi-hero-of-dominaria"});
                                                    break;
                                                   case 16:
                                                albumModel.append({"image":"../assets/ps17-204-nissa-steward-of-elements"});
                                                    break;

                                                case 17:
                                                 albumModel.append({"image":"../assets/ps19-53-god-eternal-kefnet"});
                                                    break;
                                                   case 18:
                                                 albumModel.append({"image":"../assets/ps19-207-nicol-bolas-dragon-god"});
                                                    break;
                                                   case 19:
                                                  albumModel.append({"image":"../assets/rix-45-nezahal-primal-tide"});
                                                    break;
                                                   case 20:
                                                 albumModel.append({"image":"../assets/rna-151-absorb"});
                                                    break;
                                                   case 21:
                                                  albumModel.append({"image":"../assets/rtr-47-psychic-spiral"});
                                                    break;
                                                   case 22:
                                                  albumModel.append({"image":"../assets/soi-5-archangel-avacyn"});
                                                    break;
                                                   case 23:
                                                  albumModel.append({"image":"../assets/war-169★-nissa-who-shakes-the-world"});
                                                    break;
                                                   case 24:
                                                 albumModel.append({"image":"../assets/war-228★-ashiok-dream-render"});
                                                    break;




                                             }







                                        }





                                    }
                                    font.pointSize: 10
                                    font.bold: false
                                }
                                anchors.right: parent.right
                                border.width: 0
                            }

                }}
}

    }


