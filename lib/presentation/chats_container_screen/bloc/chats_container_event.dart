// ignore_for_file: must_be_immutable

part of 'chats_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatsContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatsContainerEvent extends Equatable {}

/// Event that is dispatched when the ChatsContainer widget is first created.
class ChatsContainerInitialEvent extends ChatsContainerEvent {
  @override
  List<Object?> get props => [];
}
