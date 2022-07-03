import QtQuick 2.9
import Felgo 3.0
import QtQuick.Layouts 1.1
import FileIO 1.0
FlickablePage
{
    id:candidateProgram
    flickable.contentHeight: Math.max(flickable.height, contentCandidateProgram.height*2 )
    flickable.contentWidth: width
    scrollIndicator.visible: true
    property int id:0
    property string name:""
    property string program:""
    property string sourceIm:""

    FileIO{
        id:myFile

    }

    Connections{
        target: logic
        onFetchCandidateDetails:{
            id = idCandidate
            name = nameCandidate
            myFile.source = programCandidate
            console.log(myFile.source)
            program = myFile.read()

            sourceIm = sourceCandidate
        }
    }

    AppImage
    {
        height: 100
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 20
        anchors.leftMargin: 20
        source: "../../assets/rep_fr.png"
        fillMode: Image.PreserveAspectFit
    }

    AppImage
    {
        height: 150
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        source: "../../assets/logo.png"
        fillMode: Image.PreserveAspectFit
    }


    Column
    {
        id:contentCandidateProgram

        width: parent.width
        anchors.horizontalCenter: parent.horizontalCenter

        // Space between banner and voteelc and republique francaise picture
        anchors.top: parent.top
        anchors.topMargin: 200

        // Space between element in column
        spacing: dp(40)
        Row
        {
            id: row
            anchors.horizontalCenter: parent.horizontalCenter
            width:parent.width - dp(Theme.navigationBar.defaultBarItemPadding)*2


            spacing: dp(Theme.navigationBar.defaultBarItemPadding)

            AppImage
            {
                id:president
                width:dp(140)
                height: dp(140)
                source:sourceIm
            }

            Rectangle
            {
                id: rectangle
                width: parent.width - president.width - dp(Theme.navigationBar.defaultBarItemPadding)*2 < dp(300) ? parent.width - president.width - dp(Theme.navigationBar.defaultBarItemPadding)*2 : dp(300)
                height:dp(30)
                anchors.top: parent.top
                anchors.topMargin: president.height/2
                color:Theme.secondaryBackgroundColor
                radius:dp(10)
                AppText
                {
                    id:namePresident

                    text:name
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                    fontSize: 11
                }
            }
        }

        Column
        {
            id:programSee
            width: parent.width

            AppText
            {
                text:"Apercu du programme"
                anchors.horizontalCenter: parent.horizontalCenter
            }

        }


        Rectangle
        {
            id: programCandidate
            width: parent.width - dp(Theme.navigationBar.defaultBarItemPadding) * 2
            height: apercu.height
            color:Theme.secondaryBackgroundColor
            anchors.horizontalCenter: parent.horizontalCenter

            AppText
            {
                id:apercu
                width: parent.width
                text:program
                anchors.horizontalCenter: parent.horizontalCenter


                leftPadding: dp(20)
                wrapMode: AppText.WordWrap
            }

        }

        Rectangle
        {
            id: appImage
            color:Theme.secondaryBackgroundColor
            anchors.horizontalCenter: parent.horizontalCenter
            width: grid.width
            height: downloadProgram.height+10
            radius:dp(10)
            GridLayout
            {
                id:grid

                AppText
                {
                    id:downloadProgram
                    text:"Telecharger\nle programme complet"
                    horizontalAlignment: Text.AlignHCenter
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                IconButton
                {
                    icon:  IconType.download
                }
             }
        }

        Rectangle
        {
            id: appImage1
            color:Theme.secondaryBackgroundColor
            anchors.horizontalCenter: parent.horizontalCenter
            width: grid1.width
            height: downloadProgram.height
            radius: dp(10)

            GridLayout
            {
                id:grid1



                AppText
                {
                    id:vote
                    text:"   Voter"
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                }

                IconButton
                {
                    icon:  IconType.arrowcircleodown
                    onClicked:
                    {
                        candidateProgram.navigationStack.popAllExceptFirst()
                        logic.vote(id)

                    }
                }
             }
        }
    }

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
