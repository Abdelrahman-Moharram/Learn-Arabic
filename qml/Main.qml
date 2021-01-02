import Felgo 3.0
import QtQuick 2.0
import QtMultimedia 5.12

GameWindow {
    id: gameWindow
    screenWidth: 1080
    screenHeight: 2280

    Scene {
        id: menu
        Rectangle{
            anchors.fill:parent.gameWindowAnchorItem
            Image {
                id: backGround
                source: "../assets/android-background-image-png-8.png"
                anchors.fill:parent
            }

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 30
                color:"#000"
                y:0

                text:"Learn Arabic"
            }

            Column{
                y:120
                anchors.centerIn: parent
                spacing: 40

                StyledButton{
                   id:mainButton1
                   width: 170
                   height: 40
                   color: "#0f0"
                   borderWidth: 0
                   radius: 0
                   x: (parent.width-mainButton1.width)/2

                   Text {
                       color: "#fff"
                       text:"Supply Letter"
                       font.pixelSize: 20
                       anchors.centerIn: parent
                   }

                    onClicked: {
                        var Component = Qt.createComponent("Supply/Lion.qml");
                        var window = Component.createObject(gameWindow);
                        menu.visible=false
                        window.show

                    }

                }
                StyledButton{

                    id:mainButton2
                   width: 230
                   height: 40
                   color: "#0f0"
                   borderWidth: 0
                   radius: 0
                   x: (parent.width-mainButton2.width)/2

                   Text {
                       color: "#fff"
                       text:"Choose Correct Word"
                       font.pixelSize: 20
                       anchors.centerIn: parent
                   }
                   onClicked: {
                       var Component = Qt.createComponent("Choose/watch.qml");
                       var window = Component.createObject(gameWindow);
                       menu.visible=false
                       window.show
                   }

                }
                StyledButton{
                    id:mainButton3
                    width: 120
                    height: 40
                    color: "#f00"
                    borderWidth: 1
                    radius: 0
                    x: (parent.width-mainButton3.width)/2

                    Text {
                        color: "#fff"
                        text:"Exit"
                        font.pixelSize: 30
                        anchors.centerIn: parent
                    }
                    onClicked: Qt.quit()

                }
            }
        }



    }
}
