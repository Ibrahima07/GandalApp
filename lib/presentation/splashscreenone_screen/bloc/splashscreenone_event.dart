// ignore_for_file: must_be_immutable

part of 'splashscreenone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Splashscreenone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashscreenoneEvent extends Equatable {}

/// Event that is dispatched when the Splashscreenone widget is first created.
class SplashscreenoneInitialEvent extends SplashscreenoneEvent {
  @override
  List<Object?> get props => [];
}
