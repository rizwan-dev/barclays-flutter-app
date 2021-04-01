import 'package:json_annotation/json_annotation.dart';

part 'AccountSummary.g.dart';

@JsonSerializable()
class AccountSummary {
  const AccountSummary({
     this.balance,
     this.availableCredit,
     this.miles,
     this.paymentAmount,
     this.balanceAmount,
     this.paymentDueDate,
     this.temporaryAuthorization,
  });

  factory AccountSummary.fromJson(Map<String, dynamic> json) =>
      _$AccountSummaryFromJson(json);

  final double balance;
  final double availableCredit;
  final int miles;
  final double paymentAmount;
  final double balanceAmount;
  final String paymentDueDate;
  final double temporaryAuthorization;
}
