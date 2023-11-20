// ignore_for_file: must_be_immutable

part of 'chats_bloc.dart';

/// Represents the state of Chats in the application.
class ChatsState extends Equatable {
  ChatsState({this.chatsModelObj});

  ChatsModel? chatsModelObj;

  @override
  List<Object?> get props => [
        chatsModelObj,
      ];
  ChatsState copyWith({ChatsModel? chatsModelObj}) {
    return ChatsState(
      chatsModelObj: chatsModelObj ?? this.chatsModelObj,
    );
  }
}
