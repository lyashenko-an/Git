/*
1. Сделайте аналогичную по анимациям форму входа с использованием QWidgets.
2. Напишите программу на QML, которая бы вычисляла площадь треугольника по трём
сторонам, используя формулу Герона:
S = p(p − a)(p − b)(p − c), где p — полупериметр треугольника; a, b и c — длины сторон,
которые можно вычислить по теореме Пифагора из координат.
Данные для тестов:
a(2.23607), b(5.38516), c(6) → S = 6
a(2), b(6.32456), c(6) → S = 6
a(2.23607), b(6.7082), c(5.09902) → S = 4.5
3. Сделайте версию предыдущей задачи, которая вычисляет площадь по координатам вершин
треугольника.
Данные для тестов:
A(0, 2), B(-1, 0), C(0, 5) → S = 6
A(-2, 2), B(4, 0), C(-2, 0) → S = 6
A(0, 0), B(-1, 2), C(5, -1) → S = 4.5
*/

import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 200
    height: 480
    visible: true
    title: qsTr("Lession_1")

    function out_cons() {
        console.log("Все ОК")
    }

    property var pP_v1: 0.0

    Rectangle{
        id: rect_var1
        width: 190
        height: 240
        radius: 5

        anchors.horizontalCenter: parent.horizontalCenter
        color: "lightgreen"
        border.color: Qt.lighter(color)



    Text{
        id: title_var_1
        text:"Variant_1"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column{
        id: row_var1
        anchors.centerIn: parent
        spacing: 10

        TextField{
            id: in_A_var1
            width: 180
            height: 25
            placeholderText: qsTr("input A")
            validator: RegExpValidator{regExp: /^[0-9.]+$/}
        }

        TextField{
            id: in_B_var1
            width: 180
            height: 25
            placeholderText: qsTr("input B")
            validator: RegExpValidator{regExp: /^[0-9.]+$/}
        }

        TextField{
            id: in_C_var1
            width: 180
            height: 25
            placeholderText: qsTr("input C")
            validator: RegExpValidator{regExp: /^[0-9.]+$/}
        }

        TextField{
            id: result_v1
            width: 180
            height: 25
            placeholderText: qsTr("result")
            validator: RegExpValidator{regExp: /^[]+$/}
        }

        Button{
            id: raschet_v1
            width: 180
            height: 25
            text: qsTr("Расчитать")
            onClicked: {
                pP_v1 = (in_A_var1.text + in_B_var1.text + in_C_var1.text) / 2
                result_v1.text = Math.sqrt(pP_v1 * (pP_v1 - in_A_var1.text) * (pP_v1 - in_B_var1.text) * (pP_v1 - in_C_var1.text))
            }
        }

    }

    }

    Rectangle{
        id: rect_var2
        width: 190
        height: 240
        radius: 5
        y: 240
        color: "#bdb76b"
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: text_var2
            text: qsTr("Variant_2")
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Column{
            id: row_var2
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            spacing: 10

                Text {
                    id: coord_A
                    text: qsTr("Coord A")

                    TextField{
                        id: coord_A_x
                        width: 50
                        height: 25
                        anchors.left: coord_A.right
                        validator: RegExpValidator{regExp: /^[0-9.-]+$/}
                        placeholderText: qsTr("inp X")
                    }

                    TextField{
                        id: coord_A_y
                        width: 50
                        height: 25
                        anchors.left: coord_A_x.right
                        validator: RegExpValidator{regExp: /^[0-9.-]+$/}
                        placeholderText: qsTr("inp Y")
                    }
                }



            Text {
                id: coord_B
                text: qsTr("Coord B")
                TextField{
                    id: coord_B_x
                    width: 50
                    height: 25
                    anchors.left: coord_B.right
                    validator: RegExpValidator{regExp: /^[0-9.-]+$/}
                    placeholderText: qsTr("inp X")
                }
                TextField{
                    id: coord_B_y
                    width: 50
                    height: 25
                    anchors.left: coord_B_x.right
                    validator: RegExpValidator{regExp: /^[0-9.-]+$/}
                    placeholderText: qsTr("inp Y")
                }
            }

            Text {
                id: coord_C
                text: qsTr("Coord C")
                TextField{
                    id: coord_C_x
                    width: 50
                    height: 25
                    anchors.left: coord_C.right
                    validator: RegExpValidator{regExp: /^[0-9.-]+$/}
                    placeholderText: qsTr("inp X")
                }
                TextField{
                    id: coord_C_y
                    width: 50
                    height: 25
                    anchors.left: coord_C_x.right
                    validator: RegExpValidator{regExp: /^[0-9.-]+$/}
                    placeholderText: qsTr("inp Y")
                }
            }

            TextField{
                id: result_v2
                width: 180
                height: 25
                placeholderText: qsTr("result")
                validator: RegExpValidator{regExp: /^[]+$/}
            }

            Button{
                id: raschet_v2
                width: 180
                height: 25
                text: qsTr("Расчитать")
                onClicked: {
                    // S = 1/2*|(x2 - x1)*(y3 - y1) - (x3 - x1)*(y2 - y1)|
                    result_v2.text = Math.abs(((coord_B_x.text - coord_A_x.text)*(coord_C_y.text - coord_A_y.text) - (coord_C_x.text - coord_A_x.text)*(coord_B_y.text - coord_A_y.text)) / 2 )
                }
                }
            }

        }

}
