import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listsection_item_model.dart';
import 'package:ibrahima_s_s_application3/presentation/chats_page/models/chats_model.dart';
part 'chats_event.dart';
part 'chats_state.dart';

/// A bloc that manages the state of a Chats according to the event that is dispatched to it.
class ChatsBloc extends Bloc<ChatsEvent, ChatsState> {
  ChatsBloc(ChatsState initialState) : super(initialState) {
    on<ChatsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatsInitialEvent event,
    Emitter<ChatsState> emit,
  ) async {
    emit(state.copyWith(
        chatsModelObj: state.chatsModelObj?.copyWith(
      listsectionItemList: fillListsectionItemList(),
    )));
  }

  List<ListsectionItemModel> fillListsectionItemList() {
    return [
      ListsectionItemModel(
          iconButton: ImageConstant.imgGroup,
          gandalApp: "Gandal App",
          widget: "1",
          time: "15:12",
          bienvenuesurTrenderz: "Bienvenue sur Trenderz !"),
      ListsectionItemModel(
          bienvenuesurTrenderz: "Votre candidature a été prise e...")
    ];
  }
}
