import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        icon: ImageConstant.imgFi7941430,
        activeIcon: ImageConstant.imgFi7941430,
        type: BottomBarEnum.Fi7941430,
        isSelected: true),
    BottomMenuModel(
      icon: ImageConstant.imgFi10450953,
      activeIcon: ImageConstant.imgFi10450953,
      type: BottomBarEnum.Fi10450953,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCart,
      activeIcon: ImageConstant.imgCart,
      type: BottomBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFi11954717,
      activeIcon: ImageConstant.imgFi11954717,
      type: BottomBarEnum.Fi11954717,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      color: appTheme.gray50,
      child: SizedBox(
        height: 119.v,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(
            bottomMenuList.length,
            (index) {
              return InkWell(
                onTap: () {
                  for (var element in bottomMenuList) {
                    element.isSelected = false;
                  }
                  bottomMenuList[index].isSelected = true;
                  widget.onChanged?.call(bottomMenuList[index].type);
                  setState(() {});
                },
                child: bottomMenuList[index].isSelected
                    ? SizedBox(
                        height: 30.v,
                        width: 32.h,
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                height: 27.adaptSize,
                                width: 27.adaptSize,
                                margin: EdgeInsets.only(
                                  top: 1.v,
                                  right: 5.h,
                                  bottom: 2.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.lightGreenA40001,
                                  borderRadius: BorderRadius.circular(
                                    13.h,
                                  ),
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: bottomMenuList[index].activeIcon,
                              height: 30.adaptSize,
                              width: 30.adaptSize,
                              color: appTheme.gray90001,
                              alignment: Alignment.centerRight,
                              margin: EdgeInsets.only(left: 2.h),
                            ),
                          ],
                        ),
                      )
                    : CustomImageView(
                        imagePath: bottomMenuList[index].icon,
                        height: 30.adaptSize,
                        width: 30.adaptSize,
                        color: appTheme.black900,
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Fi7941430,
  Fi10450953,
  Cart,
  Fi11954717,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
