import '../trang_u_i_screen/widgets/userprofile1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/presentation/menu_trang_ch_page/menu_trang_ch_page.dart';
import 'package:hunh_minh_s_application3/widgets/custom_bottom_bar.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';

class TrangUIScreen extends StatelessWidget {
  TrangUIScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgStatusBarMobile2,
                height: 16.v,
                width: 389.h,
              ),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 13.h),
                  child: Text(
                    "Ưu đãi mới nhất",
                    style: CustomTextStyles.bodyLarge18,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              _buildContainer105(context),
              SizedBox(height: 16.v),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.h,
                  vertical: 11.v,
                ),
                decoration: AppDecoration.outlinePrimary6.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder4,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildFortyEight(context),
                    SizedBox(height: 12.v),
                    _buildUserProfile(context),
                    SizedBox(height: 3.v),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer105(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 11.h,
        right: 17.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 13.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: Text(
                        "Nguyễn Vũ Đăng Khoa",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Text(
                      "Điểm hiện có: 90",
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
                CustomElevatedButton(
                  height: 31.v,
                  width: 128.h,
                  text: "Voucher của tôi",
                  margin: EdgeInsets.only(top: 5.v),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 3.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMap1,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL41,
                  buttonTextStyle: theme.textTheme.bodySmall!,
                ),
              ],
            ),
          ),
          SizedBox(height: 21.v),
          Container(
            margin: EdgeInsets.only(left: 2.h),
            padding: EdgeInsets.symmetric(
              horizontal: 106.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlinePrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 1.v),
                Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text(
                    "Mã giới thiệu của bạn",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(left: 27.h),
                  child: Text(
                    "KH123456",
                    style: theme.textTheme.labelLarge,
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
  Widget _buildFortyEight(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 1.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 5.v,
            ),
            child: Text(
              "Phiếu ưu đãi của bạn",
              style: theme.textTheme.labelLarge,
            ),
          ),
          CustomElevatedButton(
            height: 36.v,
            width: 94.h,
            text: "Xem tất cả",
            buttonTextStyle: theme.textTheme.bodySmall!,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 1.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            height: 7.v,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return Userprofile1ItemWidget();
        },
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
