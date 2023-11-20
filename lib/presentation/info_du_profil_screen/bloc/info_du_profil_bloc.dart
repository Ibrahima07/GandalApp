import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/info_du_profil_screen/models/info_du_profil_model.dart';
part 'info_du_profil_event.dart';
part 'info_du_profil_state.dart';

/// A bloc that manages the state of a InfoDuProfil according to the event that is dispatched to it.
class InfoDuProfilBloc extends Bloc<InfoDuProfilEvent, InfoDuProfilState> {
  InfoDuProfilBloc(InfoDuProfilState initialState) : super(initialState) {
    on<InfoDuProfilInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<InfoDuProfilState> emit,
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
    InfoDuProfilInitialEvent event,
    Emitter<InfoDuProfilState> emit,
  ) async {
    emit(state.copyWith(
      votrenomcompletController: TextEditingController(),
    ));
    emit(state.copyWith(
        infoDuProfilModelObj: state.infoDuProfilModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }
}
