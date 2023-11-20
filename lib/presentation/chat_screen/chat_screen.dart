import 'bloc/chat_bloc.dart';
import 'models/chat_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:ibrahima_s_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:ibrahima_s_s_application3/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:ibrahima_s_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_icon_button.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_text_form_field.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBloc>(
        create: (context) => ChatBloc(ChatState(chatModelObj: ChatModel()))
          ..add(ChatInitialEvent()),
        child: ChatScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 36.h, vertical: 60.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_hier".tr,
                              style: CustomTextStyles
                                  .labelLargeCentraleSansMediumBlack900)),
                      SizedBox(height: 34.v),
                      Padding(
                          padding: EdgeInsets.only(left: 4.h, right: 79.h),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse3940x40,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    radius: BorderRadius.circular(20.h),
                                    margin: EdgeInsets.only(bottom: 14.v)),
                                Expanded(
                                    child: Container(
                                        margin: EdgeInsets.only(left: 9.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 17.h, vertical: 8.v),
                                        decoration: AppDecoration.fillGray100
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder26),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(height: 1.v),
                                              SizedBox(
                                                  width: 154.h,
                                                  child: Text(
                                                      "msg_votre_candidature2"
                                                          .tr,
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .bodyMedium))
                                            ])))
                              ])),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                          height: 42.v,
                          width: 91.h,
                          text: "lbl_merci".tr,
                          buttonStyle: CustomButtonStyles.fillLightGreenATL21,
                          buttonTextStyle: CustomTextStyles.bodyMediumGray90001,
                          alignment: Alignment.centerRight)
                    ])),
            bottomNavigationBar: _buildSeventySeven(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 60.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 49.h, top: 55.v, bottom: 42.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "lbl_onomo_hot_l".tr, margin: EdgeInsets.only(left: 31.h)),
        actions: [
          AppbarTrailingCircleimage(
              imagePath: ImageConstant.imgEllipse7,
              margin: EdgeInsets.only(left: 33.h, top: 50.v, right: 33.h))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSeventySeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 40.h, right: 36.h, bottom: 37.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: BlocSelector<ChatBloc, ChatState, TextEditingController?>(
                  selector: (state) => state.messageController,
                  builder: (context, messageController) {
                    return CustomTextFormField(
                        controller: messageController,
                        hintText: "lbl_message".tr,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 24.h, vertical: 13.v),
                        borderDecoration: TextFormFieldStyleHelper.fillGray,
                        fillColor: appTheme.gray100);
                  })),
          Padding(
              padding: EdgeInsets.only(left: 8.h),
              child: CustomIconButton(
                  height: 42.adaptSize,
                  width: 42.adaptSize,
                  padding: EdgeInsets.all(11.h),
                  decoration: IconButtonStyleHelper.fillLightGreenATL21,
                  child: CustomImageView(imagePath: ImageConstant.imgArrowUp)))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
