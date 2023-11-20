// ignore_for_file: must_be_immutable

part of 'splashscreenone_bloc.dart';

/// Represents the state of Splashscreenone in the application.
class SplashscreenoneState extends Equatable {
  SplashscreenoneState({this.splashscreenoneModelObj});

  SplashscreenoneModel? splashscreenoneModelObj;

  @override
  List<Object?> get props => [
        splashscreenoneModelObj,
      ];
  SplashscreenoneState copyWith(
      {SplashscreenoneModel? splashscreenoneModelObj}) {
    return SplashscreenoneState(
      splashscreenoneModelObj:
          splashscreenoneModelObj ?? this.splashscreenoneModelObj,
    );
  }
}
