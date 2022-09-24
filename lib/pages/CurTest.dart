// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:svo_education/pages/elements/MyAppBar.dart';

class CurTest extends StatelessWidget {
  const CurTest({super.key});

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
                null;
              },
              child: Text('Ответить')),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40.0,
            width: 2000,
            child: Container(
              color: Colors.orange,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '1/20',
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
            height: 30.0,
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(10.0, 1.0, 2.0, 5.0),
              child: Text(
                'Вопрос',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )),
          SizedBox(
            width: 20.0,
            height: 10.0,
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(10.0, 1.0, 2.0, 5.0),
              child: Text(
                'Что такое грязеторфопарафинолечение?',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              )),
          SizedBox(
            width: 20.0,
            height: 20.0,
          ),
          Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: ElevatedButton(
                  onPressed: () => 0,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[350],
                      foregroundColor: Colors.green,
                      fixedSize: Size(300, 40),
                      alignment: Alignment.centerLeft),
                  child: Text(
                    'Добыча торфа',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: ElevatedButton(
                  onPressed: () => 0,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[350],
                      foregroundColor: Colors.green,
                      fixedSize: Size(300, 40),
                      alignment: Alignment.centerLeft),
                  child: Text(
                    'Добыча торфа',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: ElevatedButton(
                  onPressed: () => 0,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[350],
                      foregroundColor: Colors.green,
                      fixedSize: Size(300, 40),
                      alignment: Alignment.centerLeft),
                  child: Text(
                    'Добыча торфа',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                child: ElevatedButton(
                  onPressed: () => 0,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[350],
                      foregroundColor: Colors.green,
                      fixedSize: Size(300, 40),
                      alignment: Alignment.centerLeft),
                  child: Text(
                    'Добыча торфа',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
