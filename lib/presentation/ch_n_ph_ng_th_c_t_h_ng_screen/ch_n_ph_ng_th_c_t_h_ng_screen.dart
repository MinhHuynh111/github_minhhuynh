import '../ch_n_ph_ng_th_c_t_h_ng_screen/widgets/twentyfourgrid_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_icon_button.dart';

class ChNPhNgThCTHNgScreen extends StatelessWidget {
  const ChNPhNgThCTHNgScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray600,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildStatusBarMobile(context),
              SizedBox(height: 17.v),
              _buildTwentyFourGrid(context),
              SizedBox(height: 15.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 51.h,
                    child: Divider(),
                  ),
                  Container(
                    height: 3.v,
                    width: 15.h,
                    decoration: BoxDecoration(
                      color: appTheme.gray40001,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "Món mới phải thử",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
              ),
              SizedBox(height: 9.v),
              _buildCafeMuIRow(context),
              SizedBox(height: 22.v),
              _buildChonPhuongThucDatHangStack(context),
              _buildContainer273Column(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusBarMobile(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStatusBarMobile4,
            height: 16.v,
            width: 389.h,
          ),
          SizedBox(height: 8.v),
          Padding(
            padding: EdgeInsets.only(left: 42.h),
            child: Text(
              "Danh mục",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 14.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyFourGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 5.h,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 82.v,
          crossAxisCount: 5,
          mainAxisSpacing: 23.h,
          crossAxisSpacing: 23.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return TwentyfourgridItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCafeMuIRow(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 37.h,
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
              margin: EdgeInsets.only(top: 6.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                top: 15.v,
                bottom: 59.v,
              ),
              child: _buildCafeMuIColumn(
                context,
                cafeName: "Cafe muối",
                price: "69.000đ",
              ),
            ),
            Spacer(),
            Container(
              height: 50.v,
              width: 30.h,
              margin: EdgeInsets.only(bottom: 64.v),
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
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildChonPhuongThucDatHangStack(BuildContext context) {
    return SizedBox(
      height: 147.v,
      width: 389.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 22.h,
                right: 36.h,
                bottom: 39.v,
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
                      left: 9.h,
                      top: 12.v,
                      bottom: 55.v,
                    ),
                    child: _buildCafeMuIColumn(
                      context,
                      cafeName: "Cafe muối",
                      price: "69.000đ",
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 50.v,
                    width: 30.h,
                    margin: EdgeInsets.only(bottom: 55.v),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 28.v,
                            width: 30.h,
                            decoration: BoxDecoration(
                              color: appTheme.yellow900,
                              borderRadius: BorderRadius.circular(
                                5.h,
                              ),
                            ),
                          ),
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
                ],
              ),
            ),
          ),
          CustomElevatedButton(
            height: 54.v,
            width: 389.h,
            text: "Chọn phương thức đặt hàng",
            buttonStyle: CustomButtonStyles.outlinePrimaryTL42,
            buttonTextStyle: theme.textTheme.labelLarge!,
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer273Column(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlinePrimary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCart,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  margin: EdgeInsets.only(top: 8.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Giao hàng",
                        style: theme.textTheme.labelLarge,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Chọn phương thức đặt hàng",
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 34.v,
                  width: 97.h,
                  text: "Chọn địa chỉ",
                  margin: EdgeInsets.only(bottom: 3.v),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL17,
                  buttonTextStyle: CustomTextStyles.bodySmall11,
                ),
              ],
            ),
          ),
          SizedBox(height: 31.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgCart,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  margin: EdgeInsets.only(
                    top: 16.v,
                    bottom: 14.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          "Mang di",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 1.v),
                      SizedBox(
                        width: 163.h,
                        child: Text(
                          "Bạn sẽ đến nhận sản phẩm tại cửa hàng",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodySmallGray700.copyWith(
                            height: 1.67,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 34.v,
                  width: 86.h,
                  text: "Chọn quán",
                  margin: EdgeInsets.only(
                    top: 8.v,
                    bottom: 16.v,
                  ),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL17,
                  buttonTextStyle: CustomTextStyles.bodySmall11,
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildCafeMuIColumn(
    BuildContext context, {
    required String cafeName,
    required String price,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          cafeName,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.primary.withOpacity(1),
          ),
        ),
        SizedBox(height: 5.v),
        Text(
          price,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.primary.withOpacity(1),
          ),
        ),
      ],
    );
  }
}
