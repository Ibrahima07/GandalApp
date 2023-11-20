// ignore_for_file: must_be_immutable

part of 'splashscreentree_bloc.dart';

/// Represents the state of Splashscreentree in the application.
class SplashscreentreeState extends Equatable {
  SplashscreentreeState({this.splashscreentreeModelObj});

  SplashscreentreeModel? splashscreentreeModelObj;

  @override
  List<Object?> get props => [
        splashscreentreeModelObj,
      ];
  SplashscreentreeState copyWith(
      {SplashscreentreeModel? splashscreentreeModelObj}) {
    return SplashscreentreeState(
      splashscreentreeModelObj:
          splashscreentreeModelObj ?? this.splashscreentreeModelObj,
    );
  }
}
