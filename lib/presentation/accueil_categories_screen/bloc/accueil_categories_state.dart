// ignore_for_file: must_be_immutable

part of 'accueil_categories_bloc.dart';

/// Represents the state of AccueilCategories in the application.
class AccueilCategoriesState extends Equatable {
  AccueilCategoriesState({
    this.searchController,
    this.accueilCategoriesModelObj,
  });

  TextEditingController? searchController;

  AccueilCategoriesModel? accueilCategoriesModelObj;

  @override
  List<Object?> get props => [
        searchController,
        accueilCategoriesModelObj,
      ];
  AccueilCategoriesState copyWith({
    TextEditingController? searchController,
    AccueilCategoriesModel? accueilCategoriesModelObj,
  }) {
    return AccueilCategoriesState(
      searchController: searchController ?? this.searchController,
      accueilCategoriesModelObj:
          accueilCategoriesModelObj ?? this.accueilCategoriesModelObj,
    );
  }
}
