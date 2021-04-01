import 'package:barclays_app/repo/model/AccountSummary.dart';
import 'package:barclays_app/widgets/helper/BlueBigText.dart';
import 'package:barclays_app/widgets/helper/BlueBoldText.dart';
import 'package:barclays_app/widgets/helper/BlueUnderlineText.dart';
import 'package:barclays_app/widgets/helper/GreyContentText.dart';
import 'package:flutter/material.dart';

class BalanceInfoTile extends StatelessWidget {
  final AccountSummary accountSummary;
  const BalanceInfoTile({
    Key key, this.accountSummary
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      BlueBoldText(text: 'Current Balance'),
                      SizedBox(height: 10.0),
                      BlueBigText(text: '\$${accountSummary.balance}'),
                      SizedBox(height: 10.0),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.lock_open_outlined,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          BlueUnderlineText(text: 'Lock')
                        ],
                      )
                    ],
                  ),
                  Icon(
                    Icons.card_giftcard_rounded,
                    size: 55.0,
                    color: Colors.blue,
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GreyContentText(
                    text: 'Available credit',
                  ),
                  GreyContentText(
                    text: '\$${accountSummary.availableCredit}',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.grey[500],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GreyContentText(
                    text: 'AAdvantage miles',
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GreyContentText(
                        text: '${accountSummary.miles}',
                      ),
                      Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.grey[500],
                      ),
                    ]
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.grey[500],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GreyContentText(
                    text: 'View current statement',
                  ),
                  Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey[500],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
