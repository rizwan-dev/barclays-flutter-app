

import 'package:equatable/equatable.dart';

abstract class AccountSummaryEvent extends Equatable{
   const AccountSummaryEvent();
}

class AccountSummaryRequested extends AccountSummaryEvent{

  const AccountSummaryRequested();

  @override
  List<Object> get props   => [];

}