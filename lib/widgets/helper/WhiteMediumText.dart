import 'package:flutter/material.dart';

class WhiteMediumText extends StatelessWidget {
  final String text;

  WhiteMediumText({Key key, this.text})   : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white, fontSize: 14.0),
    );
  }
}
