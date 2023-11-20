import '../../../core/app_export.dart';

/// This class is used in the [accueilcategories1_item_widget] screen.
class Accueilcategories1ItemModel {
  Accueilcategories1ItemModel({
    this.corn,
    this.id,
  }) {
    corn = corn ?? ImageConstant.imgCorn39442751;
    id = id ?? "";
  }

  String? corn;

  String? id;
}
