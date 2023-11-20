// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listsection_item_model.dart';

/// This class defines the variables used in the [chats_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatsModel extends Equatable {
  ChatsModel({this.listsectionItemList = const []}) {}

  List<ListsectionItemModel> listsectionItemList;

  ChatsModel copyWith({List<ListsectionItemModel>? listsectionItemList}) {
    return ChatsModel(
      listsectionItemList: listsectionItemList ?? this.listsectionItemList,
    );
  }

  @override
  List<Object?> get props => [listsectionItemList];
}
