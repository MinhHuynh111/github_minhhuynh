import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class FortyoneItemWidget extends StatelessWidget {
  const FortyoneItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage178,
          height: 51.adaptSize,
          width: 51.adaptSize,
          radius: BorderRadius.circular(
            25.h,
          ),
        ),
        SizedBox(height: 16.v),
        Text(
          "Món mới",
          style: CustomTextStyles.bodySmall10,
        ),
      ],
    );
  }
}
