import 'package:flutter/material.dart';

class BlueThinText extends StatelessWidget {
  final String text;

  BlueThinText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.blue[700], fontSize: 18.0, fontWeight: FontWeight.w300),
    );
  }
}
