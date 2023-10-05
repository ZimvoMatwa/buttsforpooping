import 'package:blockbucks/features/boleka/presentation/view_model/boleka_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BolekaCubit extends Cubit<BolekaState> {
  BolekaCubit() : super(const BolekaState());

  void validateForm({
    required String walletId,
    required String amount,
    required String repaymentPeriod,
    required String monthlyRepayment,
  }) {
    final validateWallet = walletValid(walletId);
    final finalValid = validateWallet.isNotEmpty &&
        amount.isNotEmpty &&
        repaymentPeriod.isNotEmpty &&
        monthlyRepayment.isNotEmpty;

    if (finalValid) {
      emit(state.copyWith(status: BolekaStatus.success));
    } else {
      emit(state.copyWith(
        status: BolekaStatus.failure,
      ));
    }
  }

  String walletValid(String walletId) {
    final isNum =
        walletId.runtimeType == int ? '' : 'Wallet ID needs to be numbers only';
    String isValid = '';
    if (walletId.length == 9) {
      isValid = '';
    } else if (walletId.length < 9) {
      isValid = 'Wallet ID too short';
    }

    return isNum.isNotEmpty ? isNum : isValid;
  }
}
