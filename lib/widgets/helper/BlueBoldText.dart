import 'package:flutter/material.dart';

class BlueBoldText extends StatelessWidget {
  final String text;

  BlueBoldText({Key key, this.text})   : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.indigo[900], fontSize: 16.0, fontWeight: FontWeight.w700),
    );
  }
}
