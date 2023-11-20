// ignore_for_file: must_be_immutable

part of 'chats_container_bloc.dart';

/// Represents the state of ChatsContainer in the application.
class ChatsContainerState extends Equatable {
  ChatsContainerState({this.chatsContainerModelObj});

  ChatsContainerModel? chatsContainerModelObj;

  @override
  List<Object?> get props => [
        chatsContainerModelObj,
      ];
  ChatsContainerState copyWith({ChatsContainerModel? chatsContainerModelObj}) {
    return ChatsContainerState(
      chatsContainerModelObj:
          chatsContainerModelObj ?? this.chatsContainerModelObj,
    );
  }
}
