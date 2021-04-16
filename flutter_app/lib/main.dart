import'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'komponen/movieViewer.dart';

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
            children: [MovieViewer()],
          ),
        ),
    );
  }
}

class MovieDetail extends StatefulWidget {
  @override
  State<StatefulWidget> createState()  => _MovieDetailState();

}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(16.0, 64.0, 16.0, 0.0),
        child: Column(
          children: [
            Center(
              child:
              new Text("About Application", textAlign: TextAlign.center,style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold
              ))),
              new Padding(padding: EdgeInsets.fromLTRB(0.0, 12.0, 0.0, 0.0)),
              new Text("Honkai Impact 3  is a free-to-play action game for 3D mobile games developed by miHoYo. It is the "
                  "third installment of the Honkai Series and a continuation of Houkai Gakuen, using many of the same characters"
                  " from the previous title, with separate new stories. The game is known for combining elements from a variety of genres, "
                  "from hack-and-slash, social stimulation, bullet hell, platforming, shoot 'em up, and dungeon crawling, which are included in single player"
                  " and multiplayer modes.", style: TextStyle(
                fontSize: 18.0
              )),
            new Padding(padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0)),
            new Image.asset("gameplay.jpg"),
            Spacer(),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 20.0),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pop(context);
                  },child: Text("Back")),
                )
              ],
            )
          ],
        ),
      ),
    );

  }
}
