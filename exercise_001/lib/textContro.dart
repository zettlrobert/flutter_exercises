import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final int textScore;
  final Function switchText;

  TextControl(this.textScore, this.switchText);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RaisedButton(
          onPressed: () => switchText(textScore),
          child: Text('Switch'),
        )
      ],
    );
  }
}
