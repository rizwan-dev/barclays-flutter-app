import 'dart:async';
import 'dart:convert';

import 'package:barclays_app/repo/model/AccountSummary.dart';
import 'package:http/http.dart' as http;

class APIClient {
  static const _baseUrl = 'localhost:3000';
  final http.Client httpClient;

  APIClient({this.httpClient});

  Future<AccountSummary> getAccountSummary() async {
    final summaryRequest = Uri.http( _baseUrl, '/home/summary' );
    final summaryResponse = await httpClient.get( summaryRequest );
    // final summaryResponse = await httpClient.get( "localhost", 3000, "/home/summary" );
    if (summaryResponse.statusCode != 200) {
      throw SummaryRequestFailure();
    }

    final summaryJson = jsonDecode(
      summaryResponse.body,
    ) ;

    return AccountSummary.fromJson(summaryJson as Map<String, dynamic>);

  }
}


/// Exception thrown when getAccountSummary fails.
class SummaryRequestFailure implements Exception {}
