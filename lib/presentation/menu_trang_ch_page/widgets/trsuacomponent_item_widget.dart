import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class TrsuacomponentItemWidget extends StatelessWidget {
  const TrsuacomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 132.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage197,
            height: 131.v,
            width: 132.h,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          SizedBox(height: 9.v),
          Text(
            "Trà sữa 1",
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 3.v),
          Text(
            "59.000đ",
            style: CustomTextStyles.bodySmallOnPrimary_1,
          ),
          SizedBox(height: 8.v),
          CustomElevatedButton(
            height: 30.v,
            width: 132.h,
            text: "Chọn",
            buttonStyle: CustomButtonStyles.outlinePrimaryTL62,
            buttonTextStyle: CustomTextStyles.bodySmallYellow90004,
          ),
        ],
      ),
    );
  }
}
