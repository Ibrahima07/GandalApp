/// This class is used in the [accueillist_item_widget] screen.
class AccueillistItemModel {
  AccueillistItemModel({
    this.accueil,
    this.id,
  }) {
    accueil = accueil ?? "Accueil";
    id = id ?? "";
  }

  String? accueil;

  String? id;
}
