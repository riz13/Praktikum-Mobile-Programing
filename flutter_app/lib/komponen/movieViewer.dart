
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/main.dart';

class MovieViewer extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _MovieViewerState();

}

class _MovieViewerState extends State<MovieViewer> {

  final List<String> image = [
    "HI.png","Kurumi.jpg", "Ganyu.jpg",
  ], title = [
    "Honkai Impact","Kurumi", "Genshin Impact",
  ], des = [
    "Play on PC","Season 3", "Cocogoat",
  ];

  Widget movieViewer;

  @override
  void initState() {
    super.initState();

    List<Widget> moviecollection = [];

    image.toList().forEach((element) {
      moviecollection.add(
        Row(
          children: [
            new Padding(
              padding: EdgeInsets.all(4.0),
              child: new Container(
                child: Image.asset (element.toString()),
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
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                      new Padding(padding: EdgeInsets.all(2.0)),
                      new Text("Play on PC", style: TextStyle(
                        fontSize: 15.0
                      ),
                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context,
                            CupertinoPageRoute(builder: (context) => MovieDetail()
                            ));
                      }, child: Text("Detail"))
                    ],
                  ),
                )
            )
          ],
        ),
      );

    });

    movieViewer = Column(
      children: moviecollection,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: movieViewer,
    );
  }
}