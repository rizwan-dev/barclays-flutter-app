import 'package:barclays_app/repo/model/AccountSummary.dart';
import 'package:barclays_app/widgets/helper/BlueBigText.dart';
import 'package:barclays_app/widgets/helper/BlueBoldText.dart';
import 'package:barclays_app/widgets/helper/BlueThinText.dart';
import 'package:barclays_app/widgets/helper/GreyContentText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaymentTile extends StatelessWidget {
  final AccountSummary accountSummary;
  const PaymentTile({
    Key key, this.accountSummary
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BlueBoldText(text: 'ENROLLED IN REPEAT PAYMENTS'),
              SizedBox(
                height: 10.0,
              ),
              BlueThinText(text: 'No payment is needed at this time'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.grey[500],
                ),
              ),
              GreyContentText(
                text:
                    'Your total payment of \$${accountSummary.paymentAmount} pays the statement balance of \$${accountSummary.balanceAmount}.',
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
                  GreyContentText(text: 'Payment due date'),
                  GreyContentText(text: 'Apr 18'),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  color: Colors.grey[500],
                ),
              ),
              ElevatedButton(
                onPressed: () => {},
                child: Text(
                  'View payments',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue[900],
                  onPrimary: Colors.blue[700],
                  padding: EdgeInsets.all(14.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
