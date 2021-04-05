import 'package:barclays_app/bloc/AccountSummaryBloc.dart';
import 'package:barclays_app/bloc/AccountSummaryEvent.dart';
import 'package:barclays_app/bloc/AccountSummaryState.dart';
import 'package:barclays_app/components/BalanceInfoTile.dart';
import 'package:barclays_app/components/PaymentTile.dart';
import 'package:barclays_app/components/TemporaryAuthorizationTile.dart';
import 'package:barclays_app/components/TopBanner.dart';
import 'package:barclays_app/components/TransactionActivityTile.dart';
import 'package:barclays_app/repo/model/AccountSummary.dart';
import 'package:barclays_app/widgets/helper/NavDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SummaryScreen extends StatefulWidget {
  @override
  _SummaryScreenState createState() => _SummaryScreenState( );
}

class _SummaryScreenState extends State<SummaryScreen> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AccountSummaryBloc>(context).add(
      AccountSummaryRequested(),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Barclays USCB' ),
        centerTitle: true,
        actions: [
          IconButton(
              color: Colors.blue,
              icon: Icon( Icons.info ),
              onPressed: _showInfoDialog )
        ],
      ),
      drawer: NavDrawer( ),
      body: Center(
        child: BlocBuilder<AccountSummaryBloc, AccountSummaryState>(
          builder: (context, state) {
            if (state is AccountSummaryInitial) {
              return Center( child: CircularProgressIndicator( ) );
            }

            if (state is AccountSummaryLoadInProgress) {
              Center( child: CircularProgressIndicator( ) );
            }

            if (state is AccountSummarySuccess) {
              final AccountSummary accountSummary = state.accountSummary;
              print('Account summary response in data $accountSummary');
              return ListView(
                children: [
                  TopBanner( accountSummary: accountSummary, ),
                  BalanceInfoTile( accountSummary: accountSummary, ),
                  PaymentTile( accountSummary: accountSummary, ),
                  TransactionActivityTile( accountSummary: accountSummary, ),
                  TemporaryAuthorizationTile( accountSummary: accountSummary, ),
                ],
              );
            }

            if(state is AccountSummaryFailure){
              return Text(
                'Something went wrong!',
                style: TextStyle( color: Colors.red ),
              );
            }
            return Center( child: CircularProgressIndicator( ) );
          },
        ), ),
    );
  }

  void _showInfoDialog() {}

}







