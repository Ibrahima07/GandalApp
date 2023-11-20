// ignore_for_file: must_be_immutable

part of 'splashscreentow_bloc.dart';

/// Represents the state of Splashscreentow in the application.
class SplashscreentowState extends Equatable {
  SplashscreentowState({this.splashscreentowModelObj});

  SplashscreentowModel? splashscreentowModelObj;

  @override
  List<Object?> get props => [
        splashscreentowModelObj,
      ];
  SplashscreentowState copyWith(
      {SplashscreentowModel? splashscreentowModelObj}) {
    return SplashscreentowState(
      splashscreentowModelObj:
          splashscreentowModelObj ?? this.splashscreentowModelObj,
    );
  }
}
