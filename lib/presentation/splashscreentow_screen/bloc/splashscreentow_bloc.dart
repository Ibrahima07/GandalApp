import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/splashscreentow_screen/models/splashscreentow_model.dart';
part 'splashscreentow_event.dart';
part 'splashscreentow_state.dart';

/// A bloc that manages the state of a Splashscreentow according to the event that is dispatched to it.
class SplashscreentowBloc
    extends Bloc<SplashscreentowEvent, SplashscreentowState> {
  SplashscreentowBloc(SplashscreentowState initialState) : super(initialState) {
    on<SplashscreentowInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashscreentowInitialEvent event,
    Emitter<SplashscreentowState> emit,
  ) async {}
}
