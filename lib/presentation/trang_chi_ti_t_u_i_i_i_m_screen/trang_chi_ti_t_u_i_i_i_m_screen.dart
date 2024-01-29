import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';

class TrangChiTiTUIIIMScreen extends StatelessWidget {
  const TrangChiTiTUIIIMScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStatusBarMobile12,
                height: 16.v,
                width: 389.h,
              ),
              SizedBox(
                height: 716.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    _buildContainer222(context),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage368,
                      height: 348.v,
                      width: 390.h,
                      radius: BorderRadius.circular(
                        4.h,
                      ),
                      alignment: Alignment.topCenter,
                    ),
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
  Widget _buildContainer222(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 9.v,
        ),
        decoration: AppDecoration.outlinePrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 1.h),
              padding: EdgeInsets.symmetric(
                horizontal: 34.h,
                vertical: 10.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage366,
                    height: 74.v,
                    width: 73.h,
                    radius: BorderRadius.circular(
                      4.h,
                    ),
                    margin: EdgeInsets.only(
                      top: 4.v,
                      bottom: 5.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 37.h,
                      top: 1.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cafe Muối chỉ 25k",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 24.v),
                        Text(
                          "TÚC TẮC TEA",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                        SizedBox(height: 6.v),
                        Text(
                          "Sử dụng trong 2 ngày",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Container(
              margin: EdgeInsets.only(
                left: 1.h,
                right: 2.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 7.h,
                vertical: 3.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 4.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      right: 3.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Text(
                            "Quy đổi với",
                            style: CustomTextStyles.bodySmallOnPrimary_1,
                          ),
                        ),
                        Text(
                          "Thời hạn quy đổi",
                          style: CustomTextStyles.bodyMediumOnPrimary,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Text(
                            "25 điểm",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Text(
                          "05/02/2024",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Container(
              width: 361.h,
              margin: EdgeInsets.only(
                left: 1.h,
                right: 2.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 7.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Chi tiết ưu đãi",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 10.v),
                  Container(
                    width: 249.h,
                    margin: EdgeInsets.only(right: 73.h),
                    child: Text(
                      "-- Cafe Muối size L chỉ 25k\n-- Áp dụng cho 1 sản phẩm duy nhất\n-- Áp dụng cho tất cả cửa hàng trên toàn quốc",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                        height: 1.67,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                ],
              ),
            ),
            SizedBox(height: 7.v),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 1.h),
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlinePrimary15.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.v),
                    child: Text(
                      "Đổi 25 điểm lấy Sản phẩm này",
                      style: CustomTextStyles.bodySmallWhiteA70001,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 34.v,
                    width: 85.h,
                    text: "Đổi điểm",
                    margin: EdgeInsets.only(right: 4.h),
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL15,
                    buttonTextStyle: CustomTextStyles.bodySmallYellow90003,
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.v),
          ],
        ),
      ),
    );
  }
}
