import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 6.2
import com.company.randcalc 1.0

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Number Generator")

    Randcalc {
        id: calc
        onCalculatedNumber: (data) =>{
                               label.text = data
                           }
    }

    Column {
        id: column
        width: 200
        height: 160
        anchors.centerIn: parent
        spacing: 25


        Label {
            id: label
            text: qsTr("Status")
            color: "black"
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }


        ComboBox {
            id: comboBox
            anchors.horizontalCenter: parent.horizontalCenter


            model: ListModel {
                id: listmodel
                ListElement {text: 1 }
                ListElement {text: 2 }
                ListElement {text: 3 }
                ListElement {text: 4 }
                ListElement {text: 5 }
                ListElement {text: 6 }
                ListElement {text: 7 }
                ListElement {text: 8 }
                ListElement {text: 9 }
            }
        }

        Button{
            id: button
            width: 65
            height: 35
            text: qsTr("Calcule!")
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                calc.calculate(comboBox.currentValue)
            }
        }
    }
}
