import 'package:flutter/material.dart';

class BlueContentText extends StatelessWidget {
  final String text;

  BlueContentText({Key key, this.text})   : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.blue[700], fontSize: 15.0),
    );
  }
}
