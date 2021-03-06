import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'reg.dart';
import 'auth.dart';
import 'update.dart';
import 'textcontroller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Test App For WSK',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'WSK Flutter Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top:30),
            child: SizedBox(
              width: 400.0,
              child: ElevatedButton(
                child: Text('?????????????? ???????? ?????? ?????????????????????? ????????????????????????'),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RegFrame()));},
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top:30),
            child: SizedBox(
              width: 400.0,
              child: ElevatedButton(
                child: Text('?????????????? ???????? ?????? ??????????????????????'),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => AuthFrame()));},
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top:30),
            child: SizedBox( 
              width: 400.0,
              child: ElevatedButton(
                child: Text('?????????? ???????????? ???? ???????????? ????????????????'),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => UpdateFrame()));},
            ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 30),
            child: SizedBox(
              child: ElevatedButton(
                child: Text('???????????????? ????????????????'),
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Person()));}
              ),
            ),
          ),
        ]
      ),
    );
  }
}
