// ignore_for_file: must_be_immutable

part of 'verification_numero_bloc.dart';

/// Represents the state of VerificationNumero in the application.
class VerificationNumeroState extends Equatable {
  VerificationNumeroState({
    this.otpController,
    this.verificationNumeroModelObj,
  });

  TextEditingController? otpController;

  VerificationNumeroModel? verificationNumeroModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verificationNumeroModelObj,
      ];
  VerificationNumeroState copyWith({
    TextEditingController? otpController,
    VerificationNumeroModel? verificationNumeroModelObj,
  }) {
    return VerificationNumeroState(
      otpController: otpController ?? this.otpController,
      verificationNumeroModelObj:
          verificationNumeroModelObj ?? this.verificationNumeroModelObj,
    );
  }
}
