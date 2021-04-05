import 'package:barclays_app/components/LoginScreen.dart';
import 'package:barclays_app/repo/APIClient.dart';
import 'package:barclays_app/repo/AccountSummaryRepository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'bloc/SimpleBlocObserver.dart';

void main() {
  Bloc.observer = SimpleBlocObserver();

  final AccountSummaryRepository accountSummaryRepository =
      AccountSummaryRepository(
    apiClient: APIClient(
      httpClient: http.Client(),
    ),
  );

  runApp(MaterialApp(
    title: 'Welcome to Flutter',
    theme: ThemeData(
        backgroundColor: Colors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.blue[900],
          ),
        )),
    home: LoginScreen(),
  ));
}

