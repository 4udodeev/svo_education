// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:svo_education/actions/ConnectTo4udoDB.dart';
import 'package:http/http.dart' as http;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SVO\'ё обучение'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      body: ListView(
        children: [
          Container(
              width: 160,
              height: 70,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10.0),
              child: Image.asset("lib/assets/mash_logo1.jpeg")),
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              width: 300,
              height: 520,
              child: Form(
                child: ListView(
                  children: [
                    Container(
                        width: 100,
                        height: 100,
                        alignment: Alignment.topCenter,
                        child: Image.asset("lib/assets/noname.png")),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.mail),
                        labelText: 'e-mail',
                        hintText: 'введите Ваш e-mail адрес',
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                        floatingLabelStyle: TextStyle(
                          fontSize: 16,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.password),
                        labelText: 'пароль',
                        hintText: 'введите Ваш пароль',
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                            borderSide: BorderSide(color: Colors.white)),
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        overlayColor:
                            MaterialStateProperty.all(Colors.greenAccent),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/MainMenu');
                      },
                      child: Text(
                        'Вход',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.grey[400]),
                        overlayColor:
                            MaterialStateProperty.all(Colors.greenAccent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.grey[350]) b,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/SignupPage');
                      },
                      child: Text(
                        'Регистрация',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<http.Response> getData() async {
  // final url = Uri.parse('https://about.google/static/data/locations.json');

  // Uri.parse('https://about.google/static/data/locations.json');

  return await http.get(Uri.parse('https://artemchudodeev.ru/check_user.php'));
}

void loadData() {
  getData().then((response) {
    if (response.statusCode == 200) {
      print('IT\'S  WORKING!!!!!!!');
    } else {
      print(response.statusCode);
    }
  });
}
