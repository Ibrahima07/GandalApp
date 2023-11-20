import 'dart:js';

import 'package:country_picker/country_picker.dart';

import 'bloc/connexion_page_bloc.dart';
import 'models/connexion_page_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_drop_down.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_elevated_button.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_text_form_field.dart';

class ConnexionPageScreen extends StatelessWidget {
  const ConnexionPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ConnexionPageBloc>(
      create: (context) => ConnexionPageBloc(ConnexionPageState(
        connexionPageModelObj: ConnexionPageModel(),
      ))
        ..add(ConnexionPageInitialEvent()),
      child: ConnexionPageScreen(),
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
            padding: EdgeInsets.only(
              left: 48.h,
              top: 101.v,
              right: 48.h,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroupWhiteA700,
                  height: 154.v,
                  width: 294.h,
                ),
                SizedBox(height: 93.v),
                Text(
                  "lbl_connexion".tr,
                  style: theme.textTheme.displayMedium,
                ),
                SizedBox(height: 41.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 12.h,
                  ),
                  child: BlocSelector<ConnexionPageBloc, ConnexionPageState,
                      ConnexionPageModel?>(
                    selector: (state) => state.connexionPageModelObj,
                    builder: (context, connexionPageModelObj) {
                      return CustomDropDown(
                        icon: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 30.h,
                            vertical: 25.v,
                          ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 7.v,
                            width: 14.h,
                          ),
                        ),
                        hintText: "lbl_mali".tr,
                        hintStyle: CustomTextStyles.titleLargeWhiteA700Medium,
                        items: connexionPageModelObj?.dropdownItemList ?? [],
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(16.h, 19.v, 10.h, 15.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.img,
                            height: 24.v,
                            width: 20.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 59.v,
                        ),
                        contentPadding: EdgeInsets.symmetric(vertical: 17.v),
                        onChanged: (value) {
                          context
                              .read<ConnexionPageBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 20.v),
                Container(
                  margin: EdgeInsets.only(
                    left: 16.h,
                    right: 12.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.h,
                    vertical: 17.v,
                  ),
                  decoration: AppDecoration.fillWhiteA700.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "lbl_223".tr,
                        style: CustomTextStyles.titleLargeWhiteA700Regular,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5.h),
                        child: BlocSelector<ConnexionPageBloc,
                            ConnexionPageState, TextEditingController?>(
                          selector: (state) => state.tfController,
                          builder: (context, tfController) {
                            return CustomTextFormField(
                              controller: tfController,
                              hintText: "Numero de téléphone",
                              textStyle: CustomTextStyles.titleLargeWhiteA700Medium,
                              hintStyle: theme.textTheme.titleLarge!.copyWith(
                                color: appTheme.gray200B2,
                                fontWeight: FontWeight.w400
                              ) ,
                              textInputType: TextInputType.number,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 51.v),
                CustomElevatedButton(
                  width: 183.h,
                  text: "lbl_suivant".tr,
                  buttonStyle: CustomButtonStyles.fillLightGreenA,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}