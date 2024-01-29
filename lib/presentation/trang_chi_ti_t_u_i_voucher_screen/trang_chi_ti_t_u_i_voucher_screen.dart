import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_icon_button.dart';
import 'package:qr_flutter/qr_flutter.dart';

class TrangChiTiTUIVoucherScreen extends StatelessWidget {
  const TrangChiTiTUIVoucherScreen({Key? key})
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
                imagePath: ImageConstant.imgStatusBarMobile9,
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
                    SizedBox(height: 25.v),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Mua 1 Tặng 1 + FREESHIP",
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 9.v),
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
                    SizedBox(height: 17.v),
                    CustomElevatedButton(
                      height: 41.v,
                      width: 179.h,
                      text: "Bắt đầu đặt hàng",
                      margin: EdgeInsets.only(left: 85.h),
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL20,
                    ),
                    SizedBox(height: 27.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 32.h,
                        right: 47.h,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 1.v),
                            child: Text(
                              "Ngày hết hạn",
                              style: CustomTextStyles.labelLargeOnPrimary,
                            ),
                          ),
                          Text(
                            "Trong 5 ngày",
                            style: CustomTextStyles.bodySmallRed300,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Container(
                      width: 250.h,
                      margin: EdgeInsets.only(left: 32.h),
                      child: Text(
                        "Mua 1 Tặng 1 bộ Sản phẩm Cafe Muối hoặc Trà sữa Thanh long + Freeship\n-- Áp dụng dịch vụ Giao hàng (Delivery) khi đặt hàng qua Mobile App Túc Tắc Tea trên toàn quốc.\n-- Sản phẩm áp dụng:\n+ Trà sữa Thanh Long\n+ Trà sữa Socola\n+ Trà sữa Khoai môn tươi",
                        maxLines: 9,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallOnPrimary_1.copyWith(
                          height: 1.67,
                        ),
                      ),
                    ),
                    SizedBox(height: 13.v),
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
