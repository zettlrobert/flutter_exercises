// Create a new Flutter App (flutter create flutter_assignment, then replace your main.dart with the attached one) and output an AppBar and some text below it (i.e. in the body of the page)

// Add a button (e.g. RaisedButton) which changes the text (to any other text of your choice)

// Split the app into three custom widgets: App, TextControl & Text

import 'package:flutter/material.dart';

import './text.dart';
import './textContro.dart';

main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppState();
  }
}

class _AppState extends State<App> {
  final myText = const [
    "This is Text 1",
    "This is Text 2",
    "This is Text 3",
    "This is Text 4",
    "This is Text 5"
  ];

  var _textIndex = 0;

  void _switchText(int textScore) {
    
    setState(() {
    if(textScore > myText.length - 2) {
      _textIndex = -1;
      print("Text Rest");
    }
      print(myText.length);
      print(_textIndex);
      _textIndex += 1;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exercise 001'),
        ),
        body: Column(
          children: <Widget>[
            MyText(
              textIndex: _textIndex,
              myText: myText,
            ),
            TextControl(_textIndex, _switchText),
          ],
        ),
      ),
    );
  }
}
