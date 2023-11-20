// ignore_for_file: must_be_immutable

part of 'splashscreentow_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Splashscreentow widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashscreentowEvent extends Equatable {}

/// Event that is dispatched when the Splashscreentow widget is first created.
class SplashscreentowInitialEvent extends SplashscreentowEvent {
  @override
  List<Object?> get props => [];
}
