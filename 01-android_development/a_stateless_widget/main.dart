import 'package:flutter/material.dart';

void main() {
  /*This is the first run of the App*/
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false, //'Debug' banner dissabled.
    home: MyApp(),
  ));
}

/*My App Stateless Widget*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*Default variables*/
    final double iconSize = 50.0;
    final TextStyle textStyle =
        TextStyle(color: Colors.blueGrey, fontSize: 16.0);

    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      body: Container(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            MyCard(
              title: Text(
                'I Love dart + flutter',
                style: textStyle,
              ),
              icon: Icon(Icons.favorite,
                  size: iconSize, color: (Colors.redAccent)),
            ),
            MyCard(
              title: Text(
                'I Like this programming style',
                style: textStyle,
              ),
              icon: Icon(Icons.thumb_up, size: iconSize, color: (Colors.cyan)),
            ),
            MyCard(
              title: Text(
                'Let\'s continue learning',
                style: textStyle,
              ),
              icon: Icon(Icons.queue_play_next,
                  size: iconSize, color: (Colors.lightBlue)),
            )
          ],
        )),
      ),
    );
  }
}

/*My customized Card, Stateless Widget type*/
class MyCard extends StatelessWidget {
  final Widget title;
  final Widget icon;

  /*MyCard constructor*/
  MyCard({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[this.title, this.icon],
          ),
        ),
      ),
    );
  }
}
