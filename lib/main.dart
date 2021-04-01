import 'package:barclays_app/bloc/AccountSummaryEvent.dart';
import 'package:barclays_app/repo/APIClient.dart';
import 'package:barclays_app/repo/AccountSummaryRepository.dart';
import 'package:barclays_app/widgets/SummaryScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'bloc/AccountSummaryBloc.dart';
import 'bloc/SimpleBlocObserver.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  final AccountSummaryRepository accountSummaryRepository =
      AccountSummaryRepository(
    apiClient: APIClient(
      httpClient: http.Client(),
    ),
  );

  runApp(MyApp(accountSummaryRepository: accountSummaryRepository));
}

class MyApp extends StatelessWidget {
  final AccountSummaryRepository accountSummaryRepository;

  MyApp({Key key, this.accountSummaryRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
          primaryColor: Colors.white,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue[900],
            ),
          )),
      home: BlocProvider(
        child: SummaryScreen(),
        create: (context) => AccountSummaryBloc(
            accountSummaryRepository: accountSummaryRepository),
      ),
    );
  }
}
