import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      body: Container(
        child: Center(
            child: Column(
          children: <Widget>[
            MyCard(
              title: Text('I Love flutter'),
              icon: Icon(Icons.favorite),
            ),
            MyCard(
              title: Text('I Like this Video'),
              icon: Icon(Icons.thumb_up),
            ),
            MyCard(
              title: Text('Next Video !'),
              icon: Icon(Icons.queue_play_next),
            )
          ],
        )),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          child: Column(
        children: <Widget>[this.title, this.icon],
      )),
    );
  }
}
