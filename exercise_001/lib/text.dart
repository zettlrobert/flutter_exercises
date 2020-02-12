import 'package:flutter/material.dart';


class MyText extends StatelessWidget {
  final List<String> myText;
  final int textIndex;

  MyText({
    @required this.myText,
    @required this.textIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          myText[textIndex],
        ),
      ],
    );
  }
}
