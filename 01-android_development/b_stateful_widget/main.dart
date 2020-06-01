import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, /*dissabling DEBUG Banner*/
    home: MyButton(),
  ));
}

/*MyButton class StatefulWidget */
class MyButton extends StatefulWidget {
  @override
  _MyButtonState createState() => _MyButtonState();
}

/*MyButton class State*/
class _MyButtonState extends State<MyButton> {
  /*My Default variables*/
  List<String> collections = ['Flutter', 'is', 'Awesome'];
  String flutterText = '';
  int index = 0;

  /* MyButton's onPress Method */
  void onPressButton() {
    print(index); /*checking index in Debug Console */
    setState(() {
      flutterText = collections[index];
      index = index < 2 ? index += 1 : 0;
    }); /*Re-creating the Widget with setState()*/
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful Widget'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                flutterText,
                style: TextStyle(fontSize: 40.0),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              RaisedButton(
                child: Text('Update NOW'),
                color: Colors.orange[600],
                textColor: Colors.white,
                onPressed: onPressButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
