// ignore_for_file: must_be_immutable

part of 'info_du_profil_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///InfoDuProfil widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InfoDuProfilEvent extends Equatable {}

/// Event that is dispatched when the InfoDuProfil widget is first created.
class InfoDuProfilInitialEvent extends InfoDuProfilEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends InfoDuProfilEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
