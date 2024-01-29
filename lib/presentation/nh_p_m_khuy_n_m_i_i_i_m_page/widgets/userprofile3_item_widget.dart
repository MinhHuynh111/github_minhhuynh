import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  const Userprofile3ItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 11.v,
        ),
        decoration: AppDecoration.outlineGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage366,
              height: 74.v,
              width: 73.h,
              radius: BorderRadius.circular(
                4.h,
              ),
              margin: EdgeInsets.only(bottom: 9.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                bottom: 5.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cafe Muối chỉ 25k",
                    style: theme.textTheme.bodySmall,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "25 điểm",
                    style: CustomTextStyles.titleSmallRed30001,
                  ),
                  SizedBox(height: 15.v),
                  Text(
                    "Hết hạn 31/12/2023",
                    style: CustomTextStyles.bodySmallRed30001,
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              width: 60.h,
              margin: EdgeInsets.only(
                top: 4.v,
                right: 3.h,
                bottom: 51.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlinePrimary11.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Text(
                "Đổi ngay",
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
