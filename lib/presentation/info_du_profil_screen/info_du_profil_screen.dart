import 'bloc/info_du_profil_bloc.dart';
import 'models/info_du_profil_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_drop_down.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_text_form_field.dart';

class InfoDuProfilScreen extends StatelessWidget {
  const InfoDuProfilScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<InfoDuProfilBloc>(
      create: (context) => InfoDuProfilBloc(InfoDuProfilState(
        infoDuProfilModelObj: InfoDuProfilModel(),
      ))
        ..add(InfoDuProfilInitialEvent()),
      child: InfoDuProfilScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 47.h,
              vertical: 70.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 57.v),
                Text(
                  "lbl_infos_du_profil".tr,
                  style: theme.textTheme.displayMedium,
                ),
                SizedBox(height: 15.v),
                SizedBox(
                  width: 298.h,
                  child: Text(
                    "msg_veuillez_renseigner".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumSFProWhiteA700,
                  ),
                ),
                SizedBox(height: 38.v),
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
                SizedBox(height: 32.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 28.h),
                    child: Text(
                      "lbl_nom_complet".tr,
                      style: CustomTextStyles.bodySmallSFProWhiteA700,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: BlocSelector<InfoDuProfilBloc, InfoDuProfilState,
                      TextEditingController?>(
                    selector: (state) => state.votrenomcompletController,
                    builder: (context, votrenomcompletController) {
                      return CustomTextFormField(
                        controller: votrenomcompletController,
                        hintText: "msg_votre_nom_complet".tr,
                        textInputAction: TextInputAction.done,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 27.h,
                          vertical: 19.v,
                        ),
                        borderDecoration: TextFormFieldStyleHelper.fillWhiteA,
                        fillColor: appTheme.whiteA700.withOpacity(0.19),
                      );
                    },
                  ),
                ),
                SizedBox(height: 26.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 39.h),
                    child: Text(
                      "lbl_profession".tr,
                      style: CustomTextStyles.bodySmallSFProWhiteA700,
                    ),
                  ),
                ),
                SizedBox(height: 8.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.h),
                  child: BlocSelector<InfoDuProfilBloc, InfoDuProfilState,
                      InfoDuProfilModel?>(
                    selector: (state) => state.infoDuProfilModelObj,
                    builder: (context, infoDuProfilModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 25.v, 27.h, 25.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 7.v,
                            width: 14.h,
                          ),
                        ),
                        hintText: "lbl_agriculteur".tr,
                        items: infoDuProfilModelObj?.dropdownItemList ?? [],
                        onChanged: (value) {
                          context
                              .read<InfoDuProfilBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgGroupWhiteA70030x176,
                  height: 30.v,
                  width: 176.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
