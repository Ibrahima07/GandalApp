import '../chats_page/widgets/listsection_item_widget.dart';
import 'bloc/chats_bloc.dart';
import 'models/chats_model.dart';
import 'models/listsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ChatsPage extends StatelessWidget {
  const ChatsPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatsBloc>(
      create: (context) => ChatsBloc(ChatsState(
        chatsModelObj: ChatsModel(),
      ))
        ..add(ChatsInitialEvent()),
      child: ChatsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA7001,
          child: Column(
            children: [
              _buildStackSection(context),
              SizedBox(height: 42.v),
              _buildListSection(context),
              SizedBox(height: 42.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackSection(BuildContext context) {
    return SizedBox(
      height: 165.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 124.v,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.gray50,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                left: 56.h,
                right: 56.h,
                bottom: 19.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 77.h,
                vertical: 13.v,
              ),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL200,
              ),
              child: Text(
                "lbl_chats".tr,
                style: CustomTextStyles.headlineLargeSFProLightgreenA40001,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse7,
            height: 66.adaptSize,
            width: 66.adaptSize,
            radius: BorderRadius.circular(
              33.h,
            ),
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 79.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildListSection(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 48.h),
        child: BlocSelector<ChatsBloc, ChatsState, ChatsModel?>(
          selector: (state) => state.chatsModelObj,
          builder: (context, chatsModelObj) {
            return ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 10.v,
                );
              },
              itemCount: chatsModelObj?.listsectionItemList.length ?? 0,
              itemBuilder: (context, index) {
                ListsectionItemModel model =
                    chatsModelObj?.listsectionItemList[index] ??
                        ListsectionItemModel();
                return ListsectionItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
