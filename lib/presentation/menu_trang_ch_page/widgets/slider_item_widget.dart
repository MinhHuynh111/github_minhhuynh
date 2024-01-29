import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class SliderItemWidget extends StatelessWidget {
  const SliderItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgImage160,
      height: 184.v,
      width: 362.h,
      radius: BorderRadius.circular(
        4.h,
      ),
    );
  }
}
