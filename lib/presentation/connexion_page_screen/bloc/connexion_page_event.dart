// ignore_for_file: must_be_immutable

part of 'connexion_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConnexionPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConnexionPageEvent extends Equatable {}

/// Event that is dispatched when the ConnexionPage widget is first created.
class ConnexionPageInitialEvent extends ConnexionPageEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends ConnexionPageEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
