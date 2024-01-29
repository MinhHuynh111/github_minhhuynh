import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_pin_code_text_field.dart';

class XCNhNOtpScreen extends StatelessWidget {
  const XCNhNOtpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage374,
                height: 56.v,
                width: 390.h,
                radius: BorderRadius.circular(
                  4.h,
                ),
              ),
              SizedBox(height: 5.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.outlinePrimary5.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage369,
                      height: 22.adaptSize,
                      width: 22.adaptSize,
                      radius: BorderRadius.circular(
                        4.h,
                      ),
                      alignment: Alignment.centerRight,
                    ),
                    SizedBox(height: 33.v),
                    Text(
                      "Xác nhận mã OTP",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 9.v),
                    SizedBox(
                      width: 233.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Một mã xác thực gồm 6 số \nđã được gửi đến số điện thoại ",
                              style:
                                  CustomTextStyles.bodySmallff171a1f.copyWith(
                                height: 1.67,
                              ),
                            ),
                            TextSpan(
                              text: "0355123456",
                              style: CustomTextStyles.labelLargeff171a1f,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 51.v),
                    Text(
                      "Nhập mã để tiếp tục",
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 17.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 53.h),
                      child: CustomPinCodeTextField(
                        context: context,
                        onChanged: (value) {},
                      ),
                    ),
                    SizedBox(height: 47.v),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Bạn không nhận được mã? Gửi lại (",
                            style: CustomTextStyles.bodySmallff171a1f,
                          ),
                          TextSpan(
                            text: "174s)",
                            style: CustomTextStyles.labelLargeff171a1f,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 66.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
