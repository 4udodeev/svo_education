// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:svo_education/pages/elements/MyAppBar.dart';

class CurTestWelcomePage extends StatelessWidget {
  const CurTestWelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        child: Container(
          height: 40.0,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              onPressed: () {
                Navigator.pushNamed(context, '/CurTest');
              },
              child: Text('Начать')),
        ),
      ),
      body: Column(children: [
        SizedBox(
          height: 40.0,
          width: 2000,
          child: Container(
            color: Colors.orange,
          ),
        ),
        SizedBox(
          width: 20.0,
          height: 30.0,
        ),
        Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                width: 380,
                height: 300,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset('lib/assets/icons/worker_icon.png'),
                        Container(
                          width: 260,
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            'Итоговое тестирование по курсу "Рабочий люльки подъемного сооружения"',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      'Уважаемый коллега!',
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Предлагаем Вам пройти тестирование.',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Тест состоит из 20 вопросов.',
                      textAlign: TextAlign.left,
                    ),
                    Text('На каждый вопрос есть только один вариант ответа.'),
                    Text('Время теста: 30 мин.'),
                    Text(
                        'Для успешной сдачи теста, Вам необходимо набрать 100 баллов.'),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: 300,
                child: Text(
                  'Желаем успешного прохождения тестирования!',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.orange, fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
