import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 134.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 134.adaptSize,
            width: 134.adaptSize,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 16.h,
                      top: 7.v,
                      right: 16.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 33.h,
                      vertical: 7.v,
                    ),
                    decoration: AppDecoration.outlinePrimary4.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: 18.v),
                        Text(
                          "+FREESHIP",
                          style: CustomTextStyles.manropePrimary,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage196,
                  height: 134.adaptSize,
                  width: 134.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "HOT Mua 1 Tặng 1",
              style: CustomTextStyles.bodySmallOnPrimary9,
            ),
          ),
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgDateRange1,
                  height: 12.adaptSize,
                  width: 12.adaptSize,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: Text(
                    "HSD: 30/12",
                    style: CustomTextStyles.bodySmallOnPrimary9,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
