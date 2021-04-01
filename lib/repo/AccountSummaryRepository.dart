import 'package:barclays_app/repo/APIClient.dart';
import 'package:barclays_app/repo/model/AccountSummary.dart';

class SummaryFailure implements Exception {}

class AccountSummaryRepository{

  final APIClient apiClient;

  AccountSummaryRepository({this.apiClient});


  Future<AccountSummary> getSummary() async {
    return  apiClient.getAccountSummary();
  }

}