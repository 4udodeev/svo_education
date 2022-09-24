import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar()
      : super(
          backgroundColor: Colors.white,
          leadingWidth: 0.0,
          title: Container(
            width: 300,
            height: 200,
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'lib/assets/mash_logo1.jpeg',
              width: 200,
            ),
          ),
          actions: <Widget>[
            PopupMenuButton(
              icon: Icon(
                Icons.menu,
                color: Colors.orange,
              ),
              tooltip: 'menu',
              onSelected: ((value) => null),
              itemBuilder: (context) {
                return {
                  'Личный кабинет',
                  'Тесты',
                  'Курсы',
                  'Опросы',
                  'Библиотека',
                  'Контакты'
                }.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            )
          ],
        );
}
