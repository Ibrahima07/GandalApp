// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:ibrahima_s_s_application3/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [connexion_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ConnexionPageModel extends Equatable {
  ConnexionPageModel({this.dropdownItemList = const []}) {}

  List<SelectionPopupModel> dropdownItemList;

  ConnexionPageModel copyWith({List<SelectionPopupModel>? dropdownItemList}) {
    return ConnexionPageModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList];
}
