// ignore_for_file: must_be_immutable

part of 'accueil_bloc.dart';

/// Represents the state of Accueil in the application.
class AccueilState extends Equatable {
  AccueilState({
    this.searchController,
    this.accueilModelObj,
  });

  TextEditingController? searchController;

  AccueilModel? accueilModelObj;

  @override
  List<Object?> get props => [
        searchController,
        accueilModelObj,
      ];
  AccueilState copyWith({
    TextEditingController? searchController,
    AccueilModel? accueilModelObj,
  }) {
    return AccueilState(
      searchController: searchController ?? this.searchController,
      accueilModelObj: accueilModelObj ?? this.accueilModelObj,
    );
  }
}
