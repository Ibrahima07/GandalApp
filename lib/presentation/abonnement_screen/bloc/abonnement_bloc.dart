import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ibrahima_s_s_application3/presentation/abonnement_screen/models/abonnement_model.dart';
part 'abonnement_event.dart';
part 'abonnement_state.dart';

/// A bloc that manages the state of a Abonnement according to the event that is dispatched to it.
class AbonnementBloc extends Bloc<AbonnementEvent, AbonnementState> {
  AbonnementBloc(AbonnementState initialState) : super(initialState) {
    on<AbonnementInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
  }

  _onInitialize(
    AbonnementInitialEvent event,
    Emitter<AbonnementState> emit,
  ) async {
    emit(state.copyWith(
        abonnementModelObj: state.abonnementModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
    )));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<AbonnementState> emit,
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
}
