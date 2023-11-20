/// This class is used in the [accueilcategories_item_widget] screen.
class AccueilcategoriesItemModel {
  AccueilcategoriesItemModel({
    this.accueil,
    this.id,
  }) {
    accueil = accueil ?? "Accueil";
    id = id ?? "";
  }

  String? accueil;

  String? id;
}
