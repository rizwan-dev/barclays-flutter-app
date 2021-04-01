import 'package:barclays_app/repo/model/AccountSummary.dart';
import 'package:barclays_app/widgets/helper/BlueBoldText.dart';
import 'package:flutter/material.dart';

class TransactionActivityTile extends StatelessWidget {
  final AccountSummary accountSummary;
  const TransactionActivityTile({
    Key key, this.accountSummary
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlueBoldText(text: 'TRANSACTION ACTIVITY'),
              Text('See all', style: TextStyle(color: Colors.blue[900], fontWeight: FontWeight.w400),)
            ],
          ),
        ),
      ),
    );
  }
}