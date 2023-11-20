import 'bloc/splashscreentow_bloc.dart';
import 'models/splashscreentow_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SplashscreentowScreen extends StatelessWidget {
  const SplashscreentowScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashscreentowBloc>(
      create: (context) => SplashscreentowBloc(SplashscreentowState(
        splashscreentowModelObj: SplashscreentowModel(),
      ))
        ..add(SplashscreentowInitialEvent()),
      child: SplashscreentowScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SplashscreentowBloc, SplashscreentowState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 572.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVector1,
                          height: 572.v,
                          width: 393.h,
                          alignment: Alignment.center,
                        ),
                        _buildPlaylist(context),
                      ],
                    ),
                  ),
                  SizedBox(height: 17.v),
                  Padding(
                    padding: EdgeInsets.only(left: 59.h),
                    child: Text(
                      "lbl_elevage".tr.toUpperCase(),
                      style: CustomTextStyles.displayMediumGray90001,
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    width: 248.h,
                    margin: EdgeInsets.only(left: 59.h),
                    child: Text(
                      "msg_gandalapp_est_la".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  SizedBox(height: 75.v),
                  _buildClientTestimonials(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(35.h, 23.v, 29.h, 249.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup,
              height: 48.v,
              width: 47.h,
              margin: EdgeInsets.only(
                top: 8.v,
                bottom: 243.v,
              ),
            ),
            Spacer(
              flex: 46,
            ),
            Container(
              height: 111.adaptSize,
              width: 111.adaptSize,
              margin: EdgeInsets.only(top: 188.v),
              padding: EdgeInsets.all(29.h),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder55,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgPlay,
                height: 53.adaptSize,
                width: 53.adaptSize,
                radius: BorderRadius.circular(
                  6.h,
                ),
                alignment: Alignment.center,
              ),
            ),
            Spacer(
              flex: 53,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 282.v),
              child: Text(
                "lbl_passer".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 44.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 7.v,
              margin: EdgeInsets.only(
                top: 36.v,
                bottom: 27.v,
              ),
              child: AnimatedSmoothIndicator(
                activeIndex: 0,
                count: 3,
                effect: ScrollingDotsEffect(
                  spacing: 4,
                  activeDotColor: appTheme.gray90001,
                  dotColor: appTheme.gray90001.withOpacity(0.3),
                  dotHeight: 7.v,
                  dotWidth: 7.h,
                ),
              ),
            ),
            CustomElevatedButton(
              width: 187.h,
              onPressed: () {
                onTapSuivant(context);
              },
              text: "lbl_suivant".tr,
            ),
          ],
        ),
      ),
    );
  }
  onTapSuivant(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.splashscreentreeScreen,
    );
  }
}
