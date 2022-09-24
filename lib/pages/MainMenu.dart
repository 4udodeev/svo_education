// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'elements/MyAppBar.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        children: [
          Image.asset('lib/assets/mash_wall.png'),
          SizedBox(height: 10),
          Container(
            height: 50,
            color: Colors.orange,
          ),
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[350],
                      onPrimary: Colors.grey[500],
                      onSurface: Colors.greenAccent,
                      fixedSize: Size(170.0, 120.0),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/ListTests');
                    },
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Image.asset(
                          'lib/assets/icons/tests_icon.png',
                          width: 60,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Тесты',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )),
                SizedBox(width: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[350],
                      onPrimary: Colors.grey[500],
                      onSurface: Colors.greenAccent,
                      fixedSize: Size(170.0, 120.0),
                    ),
                    onPressed: (() => 0),
                    child: Column(
                      children: [
                        SizedBox(height: 22),
                        Image.asset(
                          'lib/assets/icons/courses_icon.png',
                          width: 60,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Курсы',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[350],
                        onPrimary: Colors.grey[500],
                        onSurface: Colors.greenAccent,
                        fixedSize: Size(170.0, 120.0)),
                    onPressed: (() => 0),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Image.asset(
                          'lib/assets/icons/survey_icon.png',
                          width: 60,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Опросы',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )),
                SizedBox(width: 20),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey[350],
                      onPrimary: Colors.grey[500],
                      onSurface: Colors.greenAccent,
                      fixedSize: Size(170.0, 120.0),
                    ),
                    onPressed: (() => 0),
                    child: Column(
                      children: [
                        SizedBox(height: 23),
                        Image.asset(
                          'lib/assets/icons/biblio_icon.png',
                          width: 60,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Библиотека',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ],
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
