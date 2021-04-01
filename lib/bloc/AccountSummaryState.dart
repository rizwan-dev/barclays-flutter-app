import 'package:barclays_app/repo/model/AccountSummary.dart';
import 'package:equatable/equatable.dart';

abstract class AccountSummaryState extends Equatable {
  const AccountSummaryState();

  @override
  List<Object> get props => [];
}

class AccountSummaryInitial extends AccountSummaryState {}

class AccountSummaryLoadInProgress extends AccountSummaryState {}

class AccountSummarySuccess extends AccountSummaryState {
  final AccountSummary accountSummary;

  const AccountSummarySuccess({this.accountSummary});

  @override
  List<Object> get props => [accountSummary];
}

class AccountSummaryFailure extends AccountSummaryState {}
