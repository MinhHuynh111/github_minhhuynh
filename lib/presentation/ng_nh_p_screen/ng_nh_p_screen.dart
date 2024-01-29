import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_outlined_button.dart';

class NgNhPScreen extends StatelessWidget {
  const NgNhPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Container(
                      height: 16.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: appTheme.whiteA70001)),
                  SizedBox(height: 25.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgImage6,
                      height: 163.v,
                      width: 215.h,
                      radius: BorderRadius.circular(4.h)),
                  SizedBox(height: 16.v),
                  Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 28.h, vertical: 9.v),
                      decoration: AppDecoration.outlinePrimary,
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Text("Chào mừng bạn đến với",
                            style: CustomTextStyles.bodySmall11),
                        SizedBox(height: 6.v),
                        Text("TÚC TẮC TEA", style: theme.textTheme.titleMedium),
                        SizedBox(height: 36.v),
                        _buildLoginContainer(context),
                        SizedBox(height: 14.v),
                        _buildLoginButton(context),
                        SizedBox(height: 29.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 151.h),
                                child: Text("Hoặc",
                                    style:
                                        CustomTextStyles.bodySmallOnPrimary8))),
                        SizedBox(height: 26.v),
                        _buildContinueWithAppleButton(context),
                        SizedBox(height: 7.v),
                        _buildContinueWithFacebookButton(context),
                        SizedBox(height: 7.v),
                        _buildContinueWithGoogleButton(context),
                        SizedBox(height: 7.v)
                      ]))
                ]))));
  }

  /// Section Widget
  Widget _buildLoginContainer(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(13.h),
        decoration: AppDecoration.outlinePrimary1
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgImage2,
              height: 17.v,
              width: 16.h,
              radius: BorderRadius.circular(4.h),
              margin: EdgeInsets.only(bottom: 2.v)),
          Padding(
              padding: EdgeInsets.only(left: 5.h, bottom: 2.v),
              child: Text("+84", style: CustomTextStyles.bodySmall11)),
          Spacer(flex: 22),
          Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Text("Nhập số điện thoại",
                  style: CustomTextStyles.bodySmallOnPrimary_1)),
          Spacer(flex: 77)
        ]));
  }

  /// Section Widget
  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Đăng nhập",
        buttonStyle: CustomButtonStyles.outlinePrimary,
        onPressed: () {
          onTapLoginButton(context);
        });
  }

  /// Section Widget
  Widget _buildContinueWithAppleButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Tiếp tục bằng Apple",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 7.h),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage3, height: 18.v, width: 19.h)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL6);
  }

  /// Section Widget
  Widget _buildContinueWithFacebookButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Tiếp tục bằng Facebook",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgLogoFacebook1,
                height: 16.adaptSize,
                width: 16.adaptSize)),
        buttonStyle: CustomButtonStyles.outlinePrimaryTL61);
  }

  /// Section Widget
  Widget _buildContinueWithGoogleButton(BuildContext context) {
    return CustomOutlinedButton(
        text: "Tiếp tục bằng Google",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.h)),
            child: CustomImageView(
                imagePath: ImageConstant.imgImage4,
                height: 17.adaptSize,
                width: 17.adaptSize)));
  }

  /// Navigates to the xCNhNOtpScreen when the action is triggered.
  onTapLoginButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.xCNhNOtpScreen);
  }
}
