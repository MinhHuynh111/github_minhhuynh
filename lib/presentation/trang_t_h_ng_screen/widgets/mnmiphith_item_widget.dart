import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MnmiphithItemWidget extends StatelessWidget {
  const MnmiphithItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128.v,
      width: 367.h,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 9.v,
              ),
              decoration: AppDecoration.outlinePrimary7.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage190,
                    height: 108.adaptSize,
                    width: 108.adaptSize,
                    radius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 9.v,
                      bottom: 59.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Cafe muối",
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 5.v),
                        Text(
                          "69.000đ",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              height: 50.v,
              width: 30.h,
              margin: EdgeInsets.only(right: 12.h),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  CustomIconButton(
                    height: 28.v,
                    width: 30.h,
                    alignment: Alignment.center,
                    child: CustomImageView(),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "+",
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
