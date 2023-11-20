import 'bloc/abonnement_bloc.dart';
import 'models/abonnement_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_drop_down.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_elevated_button.dart';

class AbonnementScreen extends StatelessWidget {
  const AbonnementScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AbonnementBloc>(
      create: (context) => AbonnementBloc(AbonnementState(
        abonnementModelObj: AbonnementModel(),
      ))
        ..add(AbonnementInitialEvent()),
      child: AbonnementScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            color: appTheme.lightGreenA400,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgConnexionPage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 135.adaptSize,
                  width: 135.adaptSize,
                  padding: EdgeInsets.all(42.h),
                  decoration: AppDecoration.fillWhiteA7001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder67,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgAddAPhoto,
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    alignment: Alignment.center,
                  ),
                ),
                SizedBox(height: 17.v),
                SizedBox(
                  width: 193.h,
                  child: Text(
                    "msg_diamoussa_diarra".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                SizedBox(height: 14.v),
                SizedBox(
                  width: 149.h,
                  child: Text(
                    "msg_223_75_88_55_88_eleveur".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumSFProWhiteA700,
                  ),
                ),
                SizedBox(height: 27.v),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.customBorderTL200,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 118.h,
                        margin: EdgeInsets.only(
                          left: 41.h,
                          top: 13.v,
                          bottom: 9.v,
                        ),
                        child: Text(
                          "msg_veuillez_certifier".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.titleSmallGray90001,
                        ),
                      ),
                      Container(
                        height: 59.v,
                        width: 82.h,
                        margin: EdgeInsets.only(left: 25.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 26.h,
                          vertical: 16.v,
                        ),
                        decoration: AppDecoration.fillWhiteA7001.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL59,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCheckmark,
                          height: 26.v,
                          width: 30.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                Container(
                  width: 267.h,
                  decoration: AppDecoration.fillWhiteA7001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder26,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomElevatedButton(
                        height: 38.v,
                        width: 57.h,
                        text: "lbl_bio".tr,
                        buttonStyle: CustomButtonStyles.fillLightGreenATL26,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumSFProGray90001,
                      ),
                      SizedBox(height: 8.v),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          width: 189.h,
                          child: Text(
                            "msg_diamoussa_est_un".tr,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyLargeGray90001,
                          ),
                        ),
                      ),
                      SizedBox(height: 24.v),
                    ],
                  ),
                ),
                SizedBox(height: 28.v),
                BlocSelector<AbonnementBloc, AbonnementState, AbonnementModel?>(
                  selector: (state) => state.abonnementModelObj,
                  builder: (context, abonnementModelObj) {
                    return CustomDropDown(
                      width: 267.h,
                      icon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 25.v, 27.h, 25.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgVector,
                          height: 7.v,
                          width: 14.h,
                        ),
                      ),
                      hintText: "lbl_abonnement".tr,
                      items: abonnementModelObj?.dropdownItemList ?? [],
                      onChanged: (value) {
                        context
                            .read<AbonnementBloc>()
                            .add(ChangeDropDownEvent(value: value));
                      },
                    );
                  },
                ),
                SizedBox(height: 31.v),
                Text(
                  "lbl_retour".tr,
                  style: theme.textTheme.labelLarge!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(height: 22.v),
                CustomImageView(
                  imagePath: ImageConstant.imgGroupWhiteA70030x176,
                  height: 30.v,
                  width: 176.h,
                ),
                SizedBox(height: 2.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
