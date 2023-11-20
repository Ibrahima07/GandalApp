import 'bloc/verification_numero_bloc.dart';
import 'models/verification_numero_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_pin_code_text_field.dart';

class VerificationNumeroScreen extends StatelessWidget {
  const VerificationNumeroScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<VerificationNumeroBloc>(
      create: (context) => VerificationNumeroBloc(VerificationNumeroState(
        verificationNumeroModelObj: VerificationNumeroModel(),
      ))
        ..add(VerificationNumeroInitialEvent()),
      child: VerificationNumeroScreen(),
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
              horizontal: 38.h,
              vertical: 70.v,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Spacer(
                  flex: 52,
                ),
                SizedBox(
                  width: 221.h,
                  child: Text(
                    "msg_v_rifier_votre_num_ro".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                SizedBox(height: 18.v),
                Container(
                  width: 303.h,
                  margin: EdgeInsets.symmetric(horizontal: 6.h),
                  child: Text(
                    "msg_vous_essayez_de".tr,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumSFProWhiteA70017,
                  ),
                ),
                SizedBox(height: 44.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: BlocSelector<VerificationNumeroBloc,
                      VerificationNumeroState, TextEditingController?>(
                    selector: (state) => state.otpController,
                    builder: (context, otpController) {
                      return CustomPinCodeTextField(
                        context: context,
                        controller: otpController,
                        onChanged: (value) {
                          otpController?.text = value;
                        },
                      );
                    },
                  ),
                ),
                SizedBox(height: 46.v),
                Text(
                  "msg_code_6_chiffres".tr,
                  style: CustomTextStyles.titleMediumSFProWhiteA70017,
                ),
                Spacer(
                  flex: 47,
                ),
                Text(
                  "msg_mauvais_num_ro".tr,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
