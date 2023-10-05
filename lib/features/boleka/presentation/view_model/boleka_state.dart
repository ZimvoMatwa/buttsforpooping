import 'package:equatable/equatable.dart';

enum BolekaStatus {
  initial,
  loading,
  success,
  failure,
  walletError,
  amountError,
  periodError,
  monthlyError
}

class BolekaState extends Equatable {
  final BolekaStatus status;
  final bool formIsValid;

  const BolekaState({
    this.status = BolekaStatus.initial,
    this.formIsValid = false,
  });

  BolekaState copyWith({BolekaStatus? status, bool? formIsValid}) {
    return BolekaState(
      status: status ?? this.status,
      formIsValid: formIsValid ?? this.formIsValid,
    );
  }

  @override
  List<Object?> get props => [status];
}
