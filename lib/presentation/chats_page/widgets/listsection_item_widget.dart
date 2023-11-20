import '../models/listsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ibrahima_s_s_application3/core/app_export.dart';
import 'package:ibrahima_s_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListsectionItemWidget extends StatelessWidget {
  ListsectionItemWidget(
    this.listsectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListsectionItemModel listsectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 2.v,
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: CustomIconButton(
              height: 52.adaptSize,
              width: 52.adaptSize,
              padding: EdgeInsets.all(13.h),
              child: CustomImageView(
                imagePath: listsectionItemModelObj?.iconButton,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 10.v,
                bottom: 10.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        listsectionItemModelObj.gandalApp!,
                        style:
                            CustomTextStyles.titleSmallCentraleSansBoldBlack900,
                      ),
                      Container(
                        width: 14.adaptSize,
                        margin: EdgeInsets.only(
                          left: 8.h,
                          bottom: 4.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 5.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillLightgreenA40001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6,
                        ),
                        child: Text(
                          listsectionItemModelObj.widget!,
                          style: CustomTextStyles
                              .bodySmallCentraleSansLightGray90001,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(bottom: 4.v),
                        child: Text(
                          listsectionItemModelObj.time!,
                          style: CustomTextStyles
                              .labelLargeCentraleSansMediumLightgreenA40001,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    listsectionItemModelObj.bienvenuesurTrenderz!,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
