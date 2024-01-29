import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/custom_app_bar.dart';

class ChNAChGiaoHNgScreen extends StatelessWidget {
  const ChNAChGiaoHNgScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray20001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildContainer283(context),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.v),
                child: Column(
                  children: [
                    _buildContainer281(context),
                    _buildContainer282(context),
                    SizedBox(height: 5.v),
                    _buildContainer284(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer283(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStatusBarMobile6,
            height: 16.v,
            width: 389.h,
          ),
          SizedBox(height: 10.v),
          CustomAppBar(
            height: 41.v,
            title: AppbarSubtitleOne(
              text: "Tìm kiếm ",
              margin: EdgeInsets.only(left: 92.h),
            ),
            styleType: Style.bgShadow,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer281(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMap1,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 5.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 5.v,
              bottom: 9.v,
            ),
            child: Text(
              "Chọn trên bản đồ",
              style: CustomTextStyles.bodySmall10,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer282(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlinePrimary13.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 11.v),
          Text(
            "Địa chỉ đã lưu",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer284(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 48.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5.v),
          Text(
            "Thêm địa chỉ nhà",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 27.v),
          Text(
            "Thêm địa chỉ công ty",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 28.v),
          Text(
            "Thêm địa chỉ mới",
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
