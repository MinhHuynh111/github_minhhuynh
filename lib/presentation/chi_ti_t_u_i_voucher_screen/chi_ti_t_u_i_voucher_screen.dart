import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_icon_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ChiTiTUIVoucherScreen extends StatelessWidget {
  const ChiTiTUIVoucherScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStatusBarMobile7,
                height: 16.v,
                width: 389.h,
              ),
              SizedBox(height: 23.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 1.v,
                ),
                decoration: AppDecoration.outlinePrimary14.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL20,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "TÚC TẮC TEA",
                            style: CustomTextStyles.titleLargeGray700,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 99.h,
                              top: 6.v,
                              bottom: 2.v,
                            ),
                            child: CustomIconButton(
                              height: 19.adaptSize,
                              width: 19.adaptSize,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgImage361,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 21.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "GIẢM 10% ĐƠN TỪ 2 MÓN",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Align(
                      alignment: Alignment.center,
                      child: QrImageView(
                        data: 'https://www.google.com',
                        size: 156.v,
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 107.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Mã: ",
                                style: CustomTextStyles.bodySmallff565d6d,
                              ),
                              TextSpan(
                                text: "TUCTACTEA123",
                                style: CustomTextStyles.labelLargeff565d6d,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Padding(
                      padding: EdgeInsets.only(left: 148.h),
                      child: Text(
                        "Sao chép",
                        style: CustomTextStyles.bodySmallIndigo400,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 39.h,
                        right: 51.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ngày hết hạn",
                            style: CustomTextStyles.labelLargeOnPrimary,
                          ),
                          Text(
                            "31/12/2023",
                            style: CustomTextStyles.bodySmallRed300,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.v),
                    Container(
                      width: 254.h,
                      margin: EdgeInsets.only(
                        left: 39.h,
                        right: 68.h,
                      ),
                      child: Text(
                        "Giảm 10% cho đơn hàng từ 2 món, áp dung cho tất cả sản phẩm",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary_1.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                    SizedBox(height: 15.v),
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
