import 'package:flutter/material.dart';
import 'package:radiatemusicplater/core/app_export.dart';

// ignore: must_be_immutable
class OptionsItemWidget extends StatelessWidget {
  const OptionsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgPlus,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 78.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Text(
              "lbl_add_to_playlist".tr,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
