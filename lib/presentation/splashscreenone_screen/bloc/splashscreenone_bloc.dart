import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/splashscreenone_screen/models/splashscreenone_model.dart';
part 'splashscreenone_event.dart';
part 'splashscreenone_state.dart';

/// A bloc that manages the state of a Splashscreenone according to the event that is dispatched to it.
class SplashscreenoneBloc
    extends Bloc<SplashscreenoneEvent, SplashscreenoneState> {
  SplashscreenoneBloc(SplashscreenoneState initialState) : super(initialState) {
    on<SplashscreenoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashscreenoneInitialEvent event,
    Emitter<SplashscreenoneState> emit,
  ) async {}
}
