import 'package:flutter/material.dart';

class GreyContentText extends StatelessWidget {
  final String text;

  GreyContentText({Key key, this.text})   : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.grey[700], fontSize: 15.0),
    );
  }
}
