// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'accueilcategories_item_model.dart';
import 'accueilcategories1_item_model.dart';

/// This class defines the variables used in the [accueil_categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccueilCategoriesModel extends Equatable {
  AccueilCategoriesModel({
    this.accueilcategoriesItemList = const [],
    this.accueilcategories1ItemList = const [],
  }) {}

  List<AccueilcategoriesItemModel> accueilcategoriesItemList;

  List<Accueilcategories1ItemModel> accueilcategories1ItemList;

  AccueilCategoriesModel copyWith({
    List<AccueilcategoriesItemModel>? accueilcategoriesItemList,
    List<Accueilcategories1ItemModel>? accueilcategories1ItemList,
  }) {
    return AccueilCategoriesModel(
      accueilcategoriesItemList:
          accueilcategoriesItemList ?? this.accueilcategoriesItemList,
      accueilcategories1ItemList:
          accueilcategories1ItemList ?? this.accueilcategories1ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [accueilcategoriesItemList, accueilcategories1ItemList];
}
