import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.fromLTRB(16.0, 64.0, 16.0, 0.0),
          child: Column(
            children: [
              Row(
                children: [
                  new Padding(
                      padding: EdgeInsets.all(4.0),
                      child: new Container(
                        child: Image.asset ('HI.png'),
                        width: 200.0,
                        height: 150.0,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16.0),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xD769A047),
                              offset: Offset(0.0, 4.0),
                              blurRadius: 12.0
                            )
                          ]
                        ),
                      padding: EdgeInsets.all(12.0),
                      ),
                  ),

                  new Expanded(
                      child: new Container(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                        child: new Column(
                          children: [
                            new Text("Honkai Impact", textAlign: TextAlign.center, style: TextStyle(
                                fontSize: 28.0,
                              fontWeight: FontWeight.bold
                              ),
                            ),
                            new Padding(padding: EdgeInsets.all(2.0)),
                            new Text("Play on PC"),
                          ],
                        ),
                      )
                  )
                ],
              ),
            ],
          ),
        ),
    );
  }
}
