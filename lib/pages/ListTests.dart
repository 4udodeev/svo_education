// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:svo_education/pages/elements/MyAppBar.dart';
import 'package:svo_education/pages/elements/ButtonActivity.dart';

class ListTests extends StatelessWidget {
  ListTests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ButtonActivity lulkaButton = ButtonActivity(
      onPressed: () {
        Navigator.pushNamed(context, '/CurTestWelcomePage');
      },
      iconPath: 'lib/assets/icons/tests/test_lulka.png',
      buttonText: 'Рабочий люльки подъемного сооружения',
    );

    ButtonActivity SosudiButton = ButtonActivity(
      onPressed: () => 0,
      iconPath: 'lib/assets/icons/tests/test_sosudi.png',
      buttonText: 'Обслуживание сосудов, работающих под давлением',
    );

    ButtonActivity ElectroButton = ButtonActivity(
      onPressed: () => 0,
      iconPath: 'lib/assets/icons/tests/test_electro.png',
      buttonText: 'Электробезопасность   2 группа',
    );

    ButtonActivity VysotaButton = ButtonActivity(
      onPressed: () => 0,
      iconPath: 'lib/assets/icons/tests/test_vysota.png',
      buttonText: 'Работа на                высоте',
    );

    ButtonActivity PodemnikButton = ButtonActivity(
      onPressed: () => 0,
      iconPath: 'lib/assets/icons/tests/test_podemnik.png',
      buttonText: 'Оператор подъемного сооружения',
    );

    ButtonActivity NazemkaButton = ButtonActivity(
      onPressed: () => 0,
      iconPath: 'lib/assets/icons/tests/test_nazemka.png',
      buttonText: 'Наземное обслуживание ВС',
    );

    return Scaffold(
      appBar: MyAppBar(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        child: Container(
          height: 40.0,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
            width: 2000,
            child: Container(
              color: Colors.orange,
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          Text(
            'Выберите тест',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              lulkaButton,
              SizedBox(
                width: 20.0,
              ),
              SosudiButton,
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElectroButton,
              SizedBox(
                width: 20.0,
              ),
              VysotaButton,
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PodemnikButton,
              SizedBox(
                width: 20.0,
              ),
              NazemkaButton,
            ],
          ),
        ],
      ),
    );
  }
}
