// ignore_for_file: must_be_immutable

part of 'abonnement_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Abonnement widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AbonnementEvent extends Equatable {}

/// Event that is dispatched when the Abonnement widget is first created.
class AbonnementInitialEvent extends AbonnementEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends AbonnementEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
