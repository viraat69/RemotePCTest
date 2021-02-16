import QtQuick 2.3
import QtQuick.Window 2.2
import QtQml 2.0
import QtQuick 2.0
import QtMultimedia 5.0

Window {
    id: mainWindow
    visible: true
    width: 1024
    height: 768
    title: qsTr("Sciton Updater")


    Rectangle{
        id: rect

        width: 150
        height: 150
        x:15
        y:15
        color: "white"
    }


    MediaPlayer {
            id: mediaPlayer
            autoPlay: true
            autoLoad: true
//            source:"/home/macos/Desktop/FroggerHighway.mp4"
            source: "qrc:/testVideo2.mp4"

        }

        VideoOutput {
            id:videoOutput
            source:mediaPlayer
            anchors.fill: parent
        }

   /* Video {
        id: video
        width : 800
        height : 600
        anchors{
            left:rect.left
        }

        //source: "/home/reach/Projects/SamplePOC/testVideo.mp4"
        source: "qrc:/testVideo.mp4"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                video.play()
            }
        }

        focus: true
        Keys.onSpacePressed: video.playbackState == MediaPlayer.PlayingState ? video.pause() : video.play()
        Keys.onLeftPressed: video.seek(video.position - 5000)
        Keys.onRightPressed: video.seek(video.position + 5000)
        Component.onCompleted: {
            console.log("IIIIIIIIIIIIIII",this.status)
            //video.play();

        }
    }*/

}
