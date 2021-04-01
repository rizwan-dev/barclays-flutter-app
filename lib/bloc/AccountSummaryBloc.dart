import 'package:barclays_app/bloc/AccountSummaryState.dart';
import 'package:barclays_app/repo/AccountSummaryRepository.dart';
import 'package:barclays_app/repo/model/AccountSummary.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'AccountSummaryEvent.dart';

class AccountSummaryBloc
    extends Bloc<AccountSummaryEvent, AccountSummaryState> {
  final AccountSummaryRepository accountSummaryRepository;

  AccountSummaryBloc({this.accountSummaryRepository})
      : super(AccountSummaryInitial());

  @override
  Stream<AccountSummaryState> mapEventToState(
      AccountSummaryEvent event) async* {
    if (event is AccountSummaryRequested) {
      yield AccountSummaryLoadInProgress();

      try {
        final AccountSummary accountSummary =
            await accountSummaryRepository.getSummary();
        yield AccountSummarySuccess(accountSummary: accountSummary);
      } catch (ex) {
        print("Exception occurred is : "+ ex.toString());
        yield AccountSummaryFailure();
      }
    }
  }
}
