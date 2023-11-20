import 'bloc/splashscreen_bloc.dart';
import 'models/splashscreen_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';

class SplashscreenScreen extends StatelessWidget {
  const SplashscreenScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashscreenBloc>(
        create: (context) => SplashscreenBloc(
            SplashscreenState(splashscreenModelObj: SplashscreenModel()))
          ..add(SplashscreenInitialEvent()),
        child: SplashscreenScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<SplashscreenBloc, SplashscreenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGroupGray90001,
                      height: 102.v,
                      width: 101.h,
                      alignment: Alignment.center))));
    });
  }
}
