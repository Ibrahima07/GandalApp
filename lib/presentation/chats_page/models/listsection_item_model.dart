import '../../../core/app_export.dart';

/// This class is used in the [listsection_item_widget] screen.
class ListsectionItemModel {
  ListsectionItemModel({
    this.iconButton,
    this.gandalApp,
    this.widget,
    this.time,
    this.bienvenuesurTrenderz,
    this.id,
  }) {
    iconButton = iconButton ?? ImageConstant.imgGroup;
    gandalApp = gandalApp ?? "Gandal App";
    widget = widget ?? "1";
    time = time ?? "15:12";
    bienvenuesurTrenderz = bienvenuesurTrenderz ?? "Bienvenue sur Trenderz !";
    id = id ?? "";
  }

  String? iconButton;

  String? gandalApp;

  String? widget;

  String? time;

  String? bienvenuesurTrenderz;

  String? id;
}
