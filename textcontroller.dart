// import 'dart:ffi';

import 'package:flutter/material.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'package:async/async.dart';
 
 
class Person extends StatefulWidget {
 
  @override
  _PersonState createState() => _PersonState();
}
class _PersonState extends State<Person>{
 
  String iin = "";
  String password = "";
  String password_again = "";
  final _controller = TextEditingController();
  final _password = TextEditingController();
  final _password_again = TextEditingController();
 
  _changeName(){
    setState(() => iin = _controller.text);
  }

  _changePassword() {
    setState(() =>
      password = _password.text);
  }

  _againPassword() {
    setState(() => password_again = _password_again.text);
  }
 
  @override
  void initState() {
    super.initState();
    _controller.text = iin;
    _controller.addListener(_changeName);

    _password.text = password;
    _password.addListener(_changePassword);

    _password_again.text = password_again;
    _password_again.addListener(_againPassword);
  }

  @override
  void dispose() {
    _controller.dispose();
    _password.dispose();
    _password_again.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
        title: Text('Форма регистрации'),
        centerTitle: true,
      ),
      body: Column(children: [Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top:30),
        child: Column(
          children:[
          Text("Ваш иин: $iin", style: TextStyle(fontSize: 22)),
          SizedBox(
            width: 300.0,
            child: TextField(
              style: TextStyle(fontSize: 22),
              controller: _controller
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top:30),
            child: Column
            (children: [
            Text('Ваш пароль: $password', style: TextStyle(fontSize: 22)),
            SizedBox(
              width: 300.0,
              child: TextField(
                style: TextStyle(fontSize: 22),
                controller: _password,
              ),
            ),
            ],
            ),
            ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top:30),
            child: Column(
              children: [
              Text('Повторите пароль: $password_again', style: TextStyle(fontSize: 22)),
              SizedBox(
              width: 300.0,
              child: TextField(
                style: TextStyle(fontSize: 22),
                controller: _password_again,
            ),
          ),
          ],
          ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top:45),
            child: ElevatedButton(
              child: Text('Выгрузить фотографию вашего удостоверения'),
              onPressed: () {},
            ),
          ),
          ],
          ),
          ),
        ],
      ),
    );
  }
}