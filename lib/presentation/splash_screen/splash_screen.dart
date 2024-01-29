import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 280.v),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgStatusBarMobile16x389,
                    height: 16.v,
                    width: 389.h,
                  ),
                  SizedBox(height: 102.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage111,
                    height: 288.adaptSize,
                    width: 288.adaptSize,
                  ),
                  SizedBox(height: 20.v),
                  Text(
                    "TÚC TẮC TEA",
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 53.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 119.h),
                      child: Text(
                        "Liên hệ: 0986 724 701",
                        style: CustomTextStyles.bodySmallInterPrimaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
