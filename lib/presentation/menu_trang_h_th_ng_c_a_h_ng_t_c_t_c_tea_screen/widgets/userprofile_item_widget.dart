import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary5.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage236,
            height: 74.adaptSize,
            width: 74.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(top: 1.v),
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TÚC TẮC TEA",
                  style: CustomTextStyles.manropeGray700,
                ),
                SizedBox(height: 8.v),
                SizedBox(
                  width: 92.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "43 Hoa Lan",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Text(
                        "*****",
                        style: CustomTextStyles.bodySmallYellow900,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 22.v),
                Text(
                  "Cách bạn 1 KM",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
