// ignore_for_file: must_be_immutable

part of 'accueil_categories_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AccueilCategories widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccueilCategoriesEvent extends Equatable {}

/// Event that is dispatched when the AccueilCategories widget is first created.
class AccueilCategoriesInitialEvent extends AccueilCategoriesEvent {
  @override
  List<Object?> get props => [];
}
