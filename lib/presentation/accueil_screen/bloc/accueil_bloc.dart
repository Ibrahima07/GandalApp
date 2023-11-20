import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/accueillist_item_model.dart';
import 'package:ibrahima_s_s_application3/presentation/accueil_screen/models/accueil_model.dart';
part 'accueil_event.dart';
part 'accueil_state.dart';

/// A bloc that manages the state of a Accueil according to the event that is dispatched to it.
class AccueilBloc extends Bloc<AccueilEvent, AccueilState> {
  AccueilBloc(AccueilState initialState) : super(initialState) {
    on<AccueilInitialEvent>(_onInitialize);
  }

  List<AccueillistItemModel> fillAccueillistItemList() {
    return [
      AccueillistItemModel(accueil: "Accueil"),
      AccueillistItemModel(accueil: "Agro")
    ];
  }

  _onInitialize(
    AccueilInitialEvent event,
    Emitter<AccueilState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        accueilModelObj: state.accueilModelObj?.copyWith(
      accueillistItemList: fillAccueillistItemList(),
    )));
  }
}
