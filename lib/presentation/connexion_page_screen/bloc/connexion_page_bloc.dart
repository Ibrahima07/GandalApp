import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/connexion_page_screen/models/connexion_page_model.dart';
part 'connexion_page_event.dart';
part 'connexion_page_state.dart';

/// A bloc that manages the state of a ConnexionPage according to the event that is dispatched to it.
class ConnexionPageBloc extends Bloc<ConnexionPageEvent, ConnexionPageState> {
  ConnexionPageBloc(ConnexionPageState initialState) : super(initialState) {
    on<ConnexionPageInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<ConnexionPageState> emit,
  ) {
    emit(state.copyWith(
      selectedDropDownValue: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  _onInitialize(
    ConnexionPageInitialEvent event,
    Emitter<ConnexionPageState> emit,
  ) async {
    emit(state.copyWith(
      tfController: TextEditingController(),
    ));
    emit(state.copyWith(
        connexionPageModelObj: state.connexionPageModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
