// ignore_for_file: must_be_immutable

part of 'splashscreentree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Splashscreentree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashscreentreeEvent extends Equatable {}

/// Event that is dispatched when the Splashscreentree widget is first created.
class SplashscreentreeInitialEvent extends SplashscreentreeEvent {
  @override
  List<Object?> get props => [];
}
