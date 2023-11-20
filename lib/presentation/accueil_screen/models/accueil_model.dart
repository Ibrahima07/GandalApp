// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'accueillist_item_model.dart';

/// This class defines the variables used in the [accueil_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccueilModel extends Equatable {
  AccueilModel({this.accueillistItemList = const []}) {}

  List<AccueillistItemModel> accueillistItemList;

  AccueilModel copyWith({List<AccueillistItemModel>? accueillistItemList}) {
    return AccueilModel(
      accueillistItemList: accueillistItemList ?? this.accueillistItemList,
    );
  }

  @override
  List<Object?> get props => [accueillistItemList];
}
