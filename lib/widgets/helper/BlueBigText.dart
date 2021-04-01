import 'package:flutter/material.dart';

class BlueBigText extends StatelessWidget {
  final String text;

  BlueBigText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.indigo[900], fontSize: 24.0),
    );
  }
}
