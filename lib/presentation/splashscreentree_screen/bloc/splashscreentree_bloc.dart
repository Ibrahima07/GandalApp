import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/splashscreentree_screen/models/splashscreentree_model.dart';
part 'splashscreentree_event.dart';
part 'splashscreentree_state.dart';

/// A bloc that manages the state of a Splashscreentree according to the event that is dispatched to it.
class SplashscreentreeBloc
    extends Bloc<SplashscreentreeEvent, SplashscreentreeState> {
  SplashscreentreeBloc(SplashscreentreeState initialState)
      : super(initialState) {
    on<SplashscreentreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashscreentreeInitialEvent event,
    Emitter<SplashscreentreeState> emit,
  ) async {}
}
