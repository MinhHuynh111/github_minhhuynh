import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  const Userprofile5ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 2.v),
          padding: EdgeInsets.all(3.h),
          decoration: AppDecoration.fillPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Container(
            height: 7.adaptSize,
            width: 7.adaptSize,
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: Text(
            "Lớn",
            style: theme.textTheme.bodySmall,
          ),
        ),
        Spacer(),
        Text(
          "65.000đ",
          style: theme.textTheme.bodySmall,
        ),
      ],
    );
  }
}
