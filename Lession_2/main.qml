/*
1. Реализуйте форму регистрации для приложения знакомств. Пользователь должен ввести имя,
пол, возраст, образование, хобби, город, информацию о себе, параметры для поиска
партнёра: возрастные границы, пол, уровень образования. Можете как угодно расширить
форму регистрации. В конце формы добавьте кнопку «Регистрация», при нажатии на которую
будете писать в консоль отчёт обо всех введённых параметрах.
2. Сделайте приложение с квадратом внутри окна, который при однократном клике будет менять
цвет на случайный, а при двойном клике — превращаться в круг.
3. Добавьте в предыдущую задачу анимацию вращения квадрата на 360 градусов при клике
правой кнопкой мыши.
*/


import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 400
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column{
        id: name_patcient
        spacing: 10

        TextField{
            id: name
            width: 180
            height: 25
            placeholderText: qsTr("input Name")
        }
        TextField{
            id: floor
            width: 180
            height: 25
            placeholderText: qsTr("input Floor")
        }
        TextField{
            id:age
            width: 180
            height: 25
            placeholderText: qsTr("input Age")
        }
        TextField{
            id: education
            width: 180
            height: 25
            placeholderText: qsTr("input Education")
        }
        TextField{
            id: hobby
            width: 180
            height: 25
            placeholderText: qsTr("input hobby")
        }
        TextField{
            id: city
            width: 180
            height: 25
            placeholderText: qsTr("input City")
        }

    }

    TextArea{
        id: infa_about
        anchors.left: name_patcient.right
        width: 200
        height: 100
        BorderImage {
            id: qqqq
            source: "file"
            width: 100; height: 100
            border.left: 5; border.top: 5
            border.right: 5; border.bottom: 5
        }
        placeholderText: qsTr("information about yourself")
    }
}