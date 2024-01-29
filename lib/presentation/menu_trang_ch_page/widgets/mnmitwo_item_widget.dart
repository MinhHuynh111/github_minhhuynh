import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class MnmitwoItemWidget extends StatelessWidget {
  const MnmitwoItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage190,
            height: 174.adaptSize,
            width: 174.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "Món mới 1",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Text(
              "69.000đ",
              style: CustomTextStyles.bodySmall11,
            ),
          ),
        ],
      ),
    );
  }
}
