import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_checkbox_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_icon_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_radio_button.dart';

class ChiTiTSNPhMScreen extends StatelessWidget {
  ChiTiTSNPhMScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  String radioGroup1 = "";

  String radioGroup2 = "";

  bool thachTraiCay = false;

  bool tranChau = false;

  bool thachCafe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray40003,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildStatusBarMobile(context),
                  SizedBox(height: 1.v),
                  _buildHorizontalScroll(context),
                  _buildTrSAKhoaiMN(context),
                  _buildTrSAKhoaiMN1(context),
                  _buildFifteen(context),
                  _buildContainer262(context),
                  _buildSixteen(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildContainer260(context),
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
            imagePath: ImageConstant.imgStatusBarMobile5,
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
  Widget _buildHorizontalScroll(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: IntrinsicWidth(
        child: SizedBox(
          height: 283.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: 80.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: 7.h,
                          bottom: 9.v,
                        ),
                        child: CustomIconButton(
                          height: 41.adaptSize,
                          width: 41.adaptSize,
                          alignment: Alignment.bottomRight,
                          child: CustomImageView(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage190,
                height: 263.adaptSize,
                width: 263.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.bottomLeft,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage190,
                height: 263.adaptSize,
                width: 263.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrSAKhoaiMN(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Text(
        "Trà sữa Khoai môn tươi",
        style: theme.textTheme.titleLarge,
      ),
    );
  }

  /// Section Widget
  Widget _buildTrSAKhoaiMN1(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 5.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "49.000đ",
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 8.v),
          Container(
            width: 349.h,
            margin: EdgeInsets.only(right: 23.h),
            child: Text(
              "Sản phẩm được làm từ những nguyên liệu tươi ngon, đảm bảo an toàn vệ sinh thực phẩm, với sự chăm sóc kỹ lưỡng và tinh tế ...",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.67,
              ),
            ),
          ),
          SizedBox(height: 6.v),
          Text(
            "Xem thêm",
            style: CustomTextStyles.labelLargeYellow900,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
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
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRadioButton(
                  text: "Lớn",
                  value: "Lớn",
                  groupValue: radioGroup,
                  onChange: (value) {
                    radioGroup = value;
                  },
                ),
                Text(
                  "65.000đ",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRadioButton(
                  text: "Vừa",
                  value: "Vừa",
                  groupValue: radioGroup1,
                  onChange: (value) {
                    radioGroup1 = value;
                  },
                ),
                Text(
                  "59.000đ",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              right: 2.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomRadioButton(
                  text: "Nhỏ",
                  value: "Nhỏ",
                  groupValue: radioGroup2,
                  onChange: (value) {
                    radioGroup2 = value;
                  },
                ),
                Text(
                  "49.000đ",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer262(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
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
            padding: EdgeInsets.only(
              left: 3.h,
              right: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckboxButton(
                  text: "Thạch trái cây",
                  value: thachTraiCay,
                  onChange: (value) {
                    thachTraiCay = value;
                  },
                ),
                Text(
                  "10.000đ",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 5.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckboxButton(
                  text: "Trân châu",
                  value: tranChau,
                  onChange: (value) {
                    tranChau = value;
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Text(
                    "10.000đ",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCheckboxButton(
                  text: "Thạch cafe",
                  value: thachCafe,
                  onChange: (value) {
                    thachCafe = value;
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
  Widget _buildSixteen(BuildContext context) {
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
  Widget _buildContainer260(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 13.h,
        right: 13.h,
        bottom: 9.v,
      ),
      decoration: AppDecoration.outlinePrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFour(
            context,
            text: "-",
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 12.v,
              bottom: 18.v,
            ),
            child: Text(
              "1",
              style: theme.textTheme.titleSmall,
            ),
          ),
          _buildFour(
            context,
            text: "+",
          ),
          CustomElevatedButton(
            height: 42.v,
            width: 245.h,
            text: "Chọn 49.000đ",
            margin: EdgeInsets.only(bottom: 7.v),
            buttonTextStyle: theme.textTheme.labelMedium!,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFour(
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
