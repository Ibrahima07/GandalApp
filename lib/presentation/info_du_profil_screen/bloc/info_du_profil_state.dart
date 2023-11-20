// ignore_for_file: must_be_immutable

part of 'info_du_profil_bloc.dart';

/// Represents the state of InfoDuProfil in the application.
class InfoDuProfilState extends Equatable {
  InfoDuProfilState({
    this.votrenomcompletController,
    this.selectedDropDownValue,
    this.infoDuProfilModelObj,
  });

  TextEditingController? votrenomcompletController;

  SelectionPopupModel? selectedDropDownValue;

  InfoDuProfilModel? infoDuProfilModelObj;

  @override
  List<Object?> get props => [
        votrenomcompletController,
        selectedDropDownValue,
        infoDuProfilModelObj,
      ];
  InfoDuProfilState copyWith({
    TextEditingController? votrenomcompletController,
    SelectionPopupModel? selectedDropDownValue,
    InfoDuProfilModel? infoDuProfilModelObj,
  }) {
    return InfoDuProfilState(
      votrenomcompletController:
          votrenomcompletController ?? this.votrenomcompletController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      infoDuProfilModelObj: infoDuProfilModelObj ?? this.infoDuProfilModelObj,
    );
  }
}
