import QtQuick 2.0
import Felgo 3.0
import QtMultimedia 5.0





Scene {




    anchors.fill: parent.gameWindowAnchorItem




    Rectangle{





        id:lionLevel
        anchors.fill: parent.gameWindowAnchorItem


        Image {
            id: backd
            source: "../../assets/551727800a494_thumb900.jpg"
            anchors.fill:parent
            width: 1080
            height: 2280

        }






        StyledButton{
            id:nextButton
            visible: false
            color: "#00e600"
            radius: 0
            borderWidth: 2
            width: 230
            height: 60
            y:70
            borderColor: "yellow"
            x:50
            Text {
                id:forwardText
                x:20
                y:10
                font.pixelSize: 23
                text: "اجابة صحيحة"
                color: "#fff"


                Image {
                    x:130
                    y:5
                    width: 50
                    height: 30
                    source: "../../assets/grunge-arrow-2-4.png"
                }
            }

            onClicked: {
                var Component = Qt.createComponent("apple.qml");
                var window = Component.createObject(gameWindow);
                lionScene.visible=false
                window.show
            }
        }


        StyledButton{
            id:reloadButton
            visible: false
            color: "#f00"
            radius: 0
            borderWidth: 2
            width: 230
            height: 60
            y:70
            borderColor: "yellow"
            x:50
            Text {
                id:reloadText
                x:30
                y:10
                font.pixelSize: 23
                text: "اجابة خاطئة"
                color: "#fff"


                Image {
                    x:130
                    y:1
                    width: 40
                    height: 40
                    source: "../../assets/154-512.png"
                }
            }

            onClicked: {
                var Component = Qt.createComponent("Duck.qml");
                var window = Component.createObject(gameWindow);
                lionScene.visible=false
                window.show
            }
        }







        StyledButton{
            id:backButton
            width:150
            color: "#eee"
            radius: 0
            borderWidth: 0

            y:10
            x:10



            Image {
                    width: parent.width*.25
                    height: 30
                    y:0

                    source: "../../assets/back-icon.png"
                    Text {

                        text: "القائمة الاساسية"
                        width:parent.width*.75
                        color: "#000"
                        font.pixelSize: 17
                        x:105
                        y:1
                }
            }
            onClicked: {
                var Component = Qt.createComponent("../Main.qml");
                var window = Component.createObject(gameWindow);
                lionScene.visible=false
                window.show
            }


        }
            Column{
                id:target
                x:(lionLevel.width-target.width)/2
                y:(lionLevel.height-target.height)/4
                Text {
                    id:supText
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 50
                    color:"#000"
                    text:"_طة"
                }



        }

            Row{
                width: lionLevel.width



               StyledButton{
                   id:wrong1
                   x:lionLevel.width/10
                   y:(lionLevel.height)/1.5-20

                   borderWidth: 4
                   radius: 10


                       Text {
                           text: "ب"
                           anchors.centerIn: parent
                           font.pixelSize: 25
                   }

                   color: "#fff"
                   borderColor: "#4dff4d"
                   width:70
                   height: 50


                   onClicked: {
                       lionSound.play()

                       supText.text = "بطة";
                       nextButton.visible = true

                       //-------------------------//


                      }





              SoundEffect{
                   id:lionSound
                   source: "..s/1.mp3"
                   loops: SoundEffect.Infinite
                 }

               }







               StyledButton{
                   id:wrong2
                   x:lionLevel.width/2.5
                   y:(lionLevel.height)/1.5-20
                   borderWidth: 4
                   radius: 10


                       Text {
                           text: "ف"
                           anchors.centerIn: parent
                           font.pixelSize: 25
                   }

                   color: "#fff"
                   borderColor: "#4dff4d"
                   width:70
                   height: 50




                   onClicked: {
                       reloadButton.visible = true
                   }

               }
               StyledButton{
                   id:corrAnswer

                   x:lionLevel.width/1.47
                   y:(lionLevel.height)/1.5-20
                   borderWidth: 4
                   radius: 10


                       Text {
                           text: "ش"
                           anchors.centerIn: parent
                           font.pixelSize: 25
                   }

                   color: "#fff"
                   borderColor: "#4dff4d"
                   width:70
                   height: 50

                   onClicked: {
                       reloadButton.visible = true
                       visible:false
                   }

               }

            }

    }
}
