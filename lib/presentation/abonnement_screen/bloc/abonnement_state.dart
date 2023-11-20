// ignore_for_file: must_be_immutable

part of 'abonnement_bloc.dart';

/// Represents the state of Abonnement in the application.
class AbonnementState extends Equatable {
  AbonnementState({
    this.selectedDropDownValue,
    this.abonnementModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  AbonnementModel? abonnementModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        abonnementModelObj,
      ];
  AbonnementState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    AbonnementModel? abonnementModelObj,
  }) {
    return AbonnementState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      abonnementModelObj: abonnementModelObj ?? this.abonnementModelObj,
    );
  }
}
