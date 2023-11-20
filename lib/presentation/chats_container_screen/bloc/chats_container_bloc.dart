import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/chats_container_screen/models/chats_container_model.dart';
part 'chats_container_event.dart';
part 'chats_container_state.dart';

/// A bloc that manages the state of a ChatsContainer according to the event that is dispatched to it.
class ChatsContainerBloc
    extends Bloc<ChatsContainerEvent, ChatsContainerState> {
  ChatsContainerBloc(ChatsContainerState initialState) : super(initialState) {
    on<ChatsContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatsContainerInitialEvent event,
    Emitter<ChatsContainerState> emit,
  ) async {}
}
