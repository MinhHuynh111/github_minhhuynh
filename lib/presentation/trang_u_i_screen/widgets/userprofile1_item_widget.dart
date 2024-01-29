import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  const Userprofile1ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage256,
            height: 74.adaptSize,
            width: 74.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(
              left: 11.h,
              top: 3.v,
              bottom: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "MUA 1 TẶNG 1 + FREESHIP",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 26.v),
                SizedBox(
                  width: 227.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 3.v,
                        ),
                        child: Text(
                          "Hết hạn trong 5 ngày",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                      Container(
                        width: 79.h,
                        padding: EdgeInsets.all(1.h),
                        decoration: AppDecoration.fillGray.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Text(
                          "Áp dụng ngay",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
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
