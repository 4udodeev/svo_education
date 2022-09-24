import 'package:flutter/material.dart';
import 'package:svo_education/pages/LoginPage.dart';
import 'package:svo_education/pages/SignupPage.dart';
import 'package:svo_education/pages/MainMenu.dart';
import 'package:svo_education/pages/ListTests.dart';
import 'package:svo_education/pages/CurTestWelcomePage.dart';
import 'package:svo_education/pages/CurTest.dart';

void main() {
  runApp(const SVOeEducation());
}

class SVOeEducation extends StatelessWidget {
  const SVOeEducation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.orangeAccent),
      title: 'SVO\'ё обучение',
      home: LoginPage(),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/LoginPage':
            return MaterialPageRoute(builder: (context) => LoginPage());
            break;
          case '/SignupPage':
            return MaterialPageRoute(builder: (context) => SignupPage());
            break;
          case '/MainMenu':
            return MaterialPageRoute(builder: (context) => MainMenu());
            break;
          case '/ListTests':
            return MaterialPageRoute(builder: (context) => ListTests());
            break;
          case '/CurTestWelcomePage':
            return MaterialPageRoute(
                builder: (context) => CurTestWelcomePage());
            break;
          case '/CurTest':
            return MaterialPageRoute(builder: (context) => CurTest());
            break;
        }
      },
    );
  }
}
