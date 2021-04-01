// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AccountSummary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountSummary _$AccountSummaryFromJson(Map<String, dynamic> json) {
  return AccountSummary(
    balance: (json['balance'] as num)?.toDouble(),
    availableCredit: (json['availableCredit'] as num)?.toDouble(),
    miles: json['miles'] as int,
    paymentAmount: (json['paymentAmount'] as num)?.toDouble(),
    balanceAmount: (json['balanceAmount'] as num)?.toDouble(),
    paymentDueDate: json['paymentDueDate'] as String,
    temporaryAuthorization: (json['temporaryAuthorization'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$AccountSummaryToJson(AccountSummary instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'availableCredit': instance.availableCredit,
      'miles': instance.miles,
      'paymentAmount': instance.paymentAmount,
      'balanceAmount': instance.balanceAmount,
      'paymentDueDate': instance.paymentDueDate,
      'temporaryAuthorization': instance.temporaryAuthorization,
    };
