import '../albums_screen/widgets/albums_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:radiatemusicplater/core/app_export.dart';
import 'package:radiatemusicplater/widgets/app_bar/appbar_leading_image.dart';
import 'package:radiatemusicplater/widgets/app_bar/appbar_title.dart';
import 'package:radiatemusicplater/widgets/app_bar/appbar_trailing_image.dart';
import 'package:radiatemusicplater/widgets/app_bar/custom_app_bar.dart';

class AlbumsScreen extends StatelessWidget {
  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 22.v, right: 24.h),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16.v);
                    },
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return AlbumsItemWidget(onTapAlbum: () {
                        onTapAlbum(context);
                      });
                    }))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_albums".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMenu,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapAlbum(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
