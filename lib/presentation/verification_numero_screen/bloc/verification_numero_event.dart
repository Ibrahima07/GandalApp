// ignore_for_file: must_be_immutable

part of 'verification_numero_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerificationNumero widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerificationNumeroEvent extends Equatable {}

/// Event that is dispatched when the VerificationNumero widget is first created.
class VerificationNumeroInitialEvent extends VerificationNumeroEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationNumeroEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
