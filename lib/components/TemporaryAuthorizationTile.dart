import 'package:barclays_app/repo/model/AccountSummary.dart';
import 'package:barclays_app/widgets/helper/GreyContentText.dart';
import 'package:flutter/material.dart';

class TemporaryAuthorizationTile extends StatelessWidget {
  final AccountSummary accountSummary;
  const TemporaryAuthorizationTile({
    Key key, this.accountSummary
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.0, right: 24.0, top: 4.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GreyContentText(
            text: 'Temporary authorizations',
          ),
          GreyContentText(
            text: '\$${accountSummary.temporaryAuthorization}',
          ),
        ],
      ),
    );
  }
}
