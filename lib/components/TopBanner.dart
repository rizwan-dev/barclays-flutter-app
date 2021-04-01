import 'package:barclays_app/repo/model/AccountSummary.dart';
import 'package:barclays_app/widgets/helper/WhiteMediumText.dart';
import 'package:flutter/material.dart';

class TopBanner extends StatelessWidget {
  final AccountSummary accountSummary;
  const TopBanner({
    Key key, this.accountSummary
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10.0),
      color: Colors.blue[900],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          WhiteMediumText(
              text: 'AAdvantage Aviator Red Mastercard ending in 2915'),
          SizedBox(
            height: 10.0,
          ),
          WhiteMediumText(text: 'Last login: 3/23 at 1:52 AM ET via iOS'),
        ],
      ),
    );
  }
}
