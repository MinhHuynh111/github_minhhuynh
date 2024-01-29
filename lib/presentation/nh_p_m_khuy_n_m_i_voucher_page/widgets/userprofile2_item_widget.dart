import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  const Userprofile2ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 9.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 74.adaptSize,
            width: 74.adaptSize,
            margin: EdgeInsets.only(
              left: 10.h,
              top: 5.v,
              bottom: 5.v,
            ),
            decoration: BoxDecoration(
              color: appTheme.gray400,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 15.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "Giảm 10% đơn từ 2 món",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 29.v),
                SizedBox(
                  width: 226.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 7.v),
                        child: Text(
                          "Hết hạn 31/12/2023",
                          style: CustomTextStyles.bodySmallRed30001,
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
