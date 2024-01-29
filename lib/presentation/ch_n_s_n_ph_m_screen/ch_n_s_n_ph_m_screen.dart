import '../ch_n_s_n_ph_m_screen/widgets/userprofile5_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_checkbox_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_icon_button.dart';

class ChNSNPhMScreen extends StatelessWidget {
  ChNSNPhMScreen({Key? key})
      : super(
          key: key,
        );

  bool thchtricy = false;

  bool trnchu = false;

  bool thchcafe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray40003,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStatusBarMobile(context),
              SizedBox(height: 1.v),
              Container(
                height: 80.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.gray40002,
                  borderRadius: BorderRadius.circular(
                    4.h,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.primary,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        0,
                      ),
                    ),
                  ],
                ),
              ),
              _buildToppingRow(context),
              SizedBox(height: 3.v),
              _buildUserProfileList(context),
              SizedBox(height: 2.v),
              _buildToppingColumn(context),
              SizedBox(height: 1.v),
              _buildYuCukhacColumn(context),
              SizedBox(height: 2.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildChon49000Button(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusBarMobile(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary9,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStatusBarMobile10,
            height: 16.v,
            width: 389.h,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 42.h),
            child: Text(
              "Danh mục",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildToppingRow(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 7.v,
            ),
            child: Text(
              "Trà sữa Khoai môn tươi",
              style: theme.textTheme.titleLarge,
            ),
          ),
          Container(
            width: 41.adaptSize,
            margin: EdgeInsets.only(top: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 7.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder20,
            ),
            child: Text(
              "X",
              style: CustomTextStyles.titleLargeInterPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlinePrimary10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Size",
            style: theme.textTheme.labelMedium,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 2.h,
            ),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 13.v,
                );
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return Userprofile5ItemWidget();
              },
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildToppingColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.outlinePrimary10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Topping",
            style: theme.textTheme.labelMedium,
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: CustomCheckboxButton(
                    text: "Thạch trái cây",
                    value: thchtricy,
                    onChange: (value) {
                      thchtricy = value;
                    },
                  ),
                ),
                Text(
                  "10.000đ",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckboxButton(
                  text: "Trân châu",
                  value: trnchu,
                  onChange: (value) {
                    trnchu = value;
                  },
                ),
                Text(
                  "10.000đ",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(right: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckboxButton(
                  text: "Thạch cafe",
                  value: thchcafe,
                  onChange: (value) {
                    thchcafe = value;
                  },
                ),
                Text(
                  "10.000đ",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYuCukhacColumn(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlinePrimary10.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Yêu cầu khác",
            style: theme.textTheme.labelMedium,
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 31.h),
            child: Text(
              "Thêm ghi chú",
              style: CustomTextStyles.bodySmallGray40001,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildChon49000Button(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 13.h,
        right: 13.h,
        bottom: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 1.v),
            child: _buildFourStack(
              context,
              text: "-",
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              bottom: 15.v,
            ),
            child: Text(
              "1",
              style: theme.textTheme.titleSmall,
            ),
          ),
          _buildFourStack(
            context,
            text: "+",
          ),
          CustomElevatedButton(
            height: 42.v,
            width: 245.h,
            text: "Chọn 49.000đ",
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 4.v,
            ),
            buttonTextStyle: theme.textTheme.labelMedium!,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFourStack(
    BuildContext context, {
    required String text,
  }) {
    return SizedBox(
      height: 50.v,
      width: 31.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomIconButton(
            height: 29.v,
            width: 31.h,
            alignment: Alignment.center,
            child: CustomImageView(),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 4.h),
              child: Text(
                text,
                style: theme.textTheme.displaySmall!.copyWith(
                  color: appTheme.gray50,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
