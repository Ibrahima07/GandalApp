import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/verification_numero_screen/models/verification_numero_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
part 'verification_numero_event.dart';
part 'verification_numero_state.dart';

/// A bloc that manages the state of a VerificationNumero according to the event that is dispatched to it.
class VerificationNumeroBloc
    extends Bloc<VerificationNumeroEvent, VerificationNumeroState>
    with CodeAutoFill {
  VerificationNumeroBloc(VerificationNumeroState initialState)
      : super(initialState) {
    on<VerificationNumeroInitialEvent>(_onInitialize);
    on<ChangeOTPEvent>(_changeOTP);
  }

  @override
  codeUpdated() {
    add(ChangeOTPEvent(code: code!));
  }

  _changeOTP(
    ChangeOTPEvent event,
    Emitter<VerificationNumeroState> emit,
  ) {
    emit(state.copyWith(
      otpController: TextEditingController(text: event.code),
    ));
  }

  _onInitialize(
    VerificationNumeroInitialEvent event,
    Emitter<VerificationNumeroState> emit,
  ) async {
    emit(state.copyWith(
      otpController: TextEditingController(),
    ));
    listenForCode();
  }
}
