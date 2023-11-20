import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/accueilcategories_item_model.dart';
import '../models/accueilcategories1_item_model.dart';
import 'package:ibrahima_s_s_application3/presentation/accueil_categories_screen/models/accueil_categories_model.dart';
part 'accueil_categories_event.dart';
part 'accueil_categories_state.dart';

/// A bloc that manages the state of a AccueilCategories according to the event that is dispatched to it.
class AccueilCategoriesBloc
    extends Bloc<AccueilCategoriesEvent, AccueilCategoriesState> {
  AccueilCategoriesBloc(AccueilCategoriesState initialState)
      : super(initialState) {
    on<AccueilCategoriesInitialEvent>(_onInitialize);
  }

  List<AccueilcategoriesItemModel> fillAccueilcategoriesItemList() {
    return [
      AccueilcategoriesItemModel(accueil: "Accueil"),
      AccueilcategoriesItemModel(accueil: "Agro")
    ];
  }

  List<Accueilcategories1ItemModel> fillAccueilcategories1ItemList() {
    return [
      Accueilcategories1ItemModel(corn: ImageConstant.imgCorn39442751),
      Accueilcategories1ItemModel(corn: ImageConstant.imgPeanut87820981),
      Accueilcategories1ItemModel(corn: ImageConstant.imgSoybean9921034),
      Accueilcategories1ItemModel(corn: ImageConstant.imgOnion17903921),
      Accueilcategories1ItemModel(corn: ImageConstant.imgChilli17904361),
      Accueilcategories1ItemModel(corn: ImageConstant.imgOkra72177941),
      Accueilcategories1ItemModel(corn: ImageConstant.imgPotato17903951),
      Accueilcategories1ItemModel(corn: ImageConstant.imgGarlic17904061),
      Accueilcategories1ItemModel(corn: ImageConstant.imgTomato17903871),
      Accueilcategories1ItemModel(corn: ImageConstant.imgPapaya17913211),
      Accueilcategories1ItemModel(corn: ImageConstant.imgLime17913461),
      Accueilcategories1ItemModel(corn: ImageConstant.imgBanana25228341)
    ];
  }

  _onInitialize(
    AccueilCategoriesInitialEvent event,
    Emitter<AccueilCategoriesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        accueilCategoriesModelObj: state.accueilCategoriesModelObj?.copyWith(
      accueilcategoriesItemList: fillAccueilcategoriesItemList(),
      accueilcategories1ItemList: fillAccueilcategories1ItemList(),
    )));
  }
}
