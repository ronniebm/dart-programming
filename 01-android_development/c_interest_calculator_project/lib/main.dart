import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Interest Calculator App',
      home: SIForm(),
    ),
  );
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  var _currencies = ['Dollars', 'COP'];
  final _minimunPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Simple Interest Calculator'),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimunPadding * 2),
        child: ListView(
          children: <Widget>[
            getImageAsset(),
            Padding(
              padding: EdgeInsets.only(
                  top: _minimunPadding, bottom: _minimunPadding),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Type a value',
                    hintText: 'Enter Main e.g. 12000',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _minimunPadding, bottom: _minimunPadding),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Rate of interest',
                    hintText: 'In percent',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              ),
            ),
            
            Padding (
              padding: EdgeInsets.only(top: _minimunPadding, bottom: _minimunPadding),
              child: Row(
              children: <Widget>[

                Expanded (child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Term',
                    hintText: 'Time in years',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0))),
              )),

                Container(width: _minimunPadding * 5,),

                Expanded (child: DropdownButton<String>(
                items: _currencies.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),

                value: 'Dollars',

                onChanged: (String newValueSelected) {
                  //your code to execute, when a menu item is selected from dropdown
                },
              ))

              ],
            )),

            Padding (
              padding: EdgeInsets.only(top: _minimunPadding, bottom: _minimunPadding),
              child: Row(children: <Widget>[
              
              Expanded(
                child: RaisedButton(
                  child: Text('Calculate'),
                  onPressed: () {},
                ),
              ),

              Padding(padding: EdgeInsets.all(5.0)),

              Expanded(
                child: RaisedButton(
                  child: Text('Reset'),
                  onPressed: () {},
                ),
              ),

            ],)),

            Padding(
              padding: EdgeInsets.all(_minimunPadding * 2),
              child: Text('Todo Text')
            ,)
          ],
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/calculator.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );

    return Container(
      child: image,
      margin: EdgeInsets.all(_minimunPadding * 10),
    );
  }
}
