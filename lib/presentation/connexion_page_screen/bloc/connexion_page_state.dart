// ignore_for_file: must_be_immutable

part of 'connexion_page_bloc.dart';

/// Represents the state of ConnexionPage in the application.
class ConnexionPageState extends Equatable {
  ConnexionPageState({
    this.tfController,
    this.selectedDropDownValue,
    this.connexionPageModelObj,
  });

  TextEditingController? tfController;

  SelectionPopupModel? selectedDropDownValue;

  ConnexionPageModel? connexionPageModelObj;

  @override
  List<Object?> get props => [
        tfController,
        selectedDropDownValue,
        connexionPageModelObj,
      ];
  ConnexionPageState copyWith({
    TextEditingController? tfController,
    SelectionPopupModel? selectedDropDownValue,
    ConnexionPageModel? connexionPageModelObj,
  }) {
    return ConnexionPageState(
      tfController: tfController ?? this.tfController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      connexionPageModelObj:
          connexionPageModelObj ?? this.connexionPageModelObj,
    );
  }
}
