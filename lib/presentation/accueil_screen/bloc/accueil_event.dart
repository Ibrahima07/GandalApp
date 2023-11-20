// ignore_for_file: must_be_immutable

part of 'accueil_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Accueil widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AccueilEvent extends Equatable {}

/// Event that is dispatched when the Accueil widget is first created.
class AccueilInitialEvent extends AccueilEvent {
  @override
  List<Object?> get props => [];
}
