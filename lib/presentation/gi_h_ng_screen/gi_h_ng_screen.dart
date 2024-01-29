import '../gi_h_ng_screen/widgets/monmoitext_item_widget.dart';
import '../gi_h_ng_screen/widgets/userprofile4_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/presentation/menu_trang_ch_page/menu_trang_ch_page.dart';
import 'package:hunh_minh_s_application3/widgets/custom_bottom_bar.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_icon_button.dart';

class GiHNgScreen extends StatelessWidget {
  GiHNgScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildContainer247(context),
                SizedBox(height: 14.v),
                _buildMonMoiText(context),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 149.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
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
                  ),
                ),
                SizedBox(height: 15.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 17.h),
                    child: Text(
                      "Món mới phải thử",
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                _buildUserProfile(context),
                SizedBox(height: 15.v),
                _buildTrSA(context),
                SizedBox(height: 6.v),
                _buildD(context),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer247(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 16.v,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
            ),
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
  Widget _buildMonMoiText(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 26.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 82.v,
            crossAxisCount: 5,
            mainAxisSpacing: 27.h,
            crossAxisSpacing: 27.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
            return MonmoitextItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 6.v,
          );
        },
        itemCount: 2,
        itemBuilder: (context, index) {
          return Userprofile4ItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTrSA(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 11.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Trà sữa",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10.v),
            decoration: AppDecoration.outlinePrimary7.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                Container(
                  width: 216.h,
                  margin: EdgeInsets.only(bottom: 57.v),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 9.v,
                          bottom: 1.v,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Trà sữa 1",
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
                      SizedBox(
                        height: 50.v,
                        width: 30.h,
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
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildD(BuildContext context) {
    return SizedBox(
      height: 128.v,
      width: 375.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4.h),
              padding: EdgeInsets.all(10.h),
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
                      left: 12.h,
                      top: 9.v,
                      bottom: 58.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Trà sữa 2",
                            style: theme.textTheme.bodySmall,
                          ),
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
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(
                top: 45.v,
                bottom: 32.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 9.h,
                vertical: 4.v,
              ),
              decoration: AppDecoration.outlinePrimaryContainer.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder4,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Đến lấy tại",
                          style: CustomTextStyles.bodySmallOnPrimary,
                        ),
                        SizedBox(height: 9.v),
                        Text(
                          "Túc Tắc Tea 43 Hoa Hồng, Phú Nhuận, TPHCM",
                          style: CustomTextStyles.bodySmall10,
                        ),
                      ],
                    ),
                  ),
                  CustomElevatedButton(
                    height: 37.v,
                    width: 102.h,
                    text: "100.000đ",
                    margin: EdgeInsets.only(top: 2.v),
                    buttonStyle: CustomButtonStyles.outlinePrimaryTL18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Trangch:
        return AppRoutes.menuTrangChPage;
      case BottomBarEnum.Thng:
        return "/";
      case BottomBarEnum.Cahng:
        return "/";
      case BottomBarEnum.Ui:
        return "/";
      case BottomBarEnum.Khc:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.menuTrangChPage:
        return MenuTrangChPage();
      default:
        return DefaultWidget();
    }
  }
}
