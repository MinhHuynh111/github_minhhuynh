import '../menu_trang_h_th_ng_c_a_h_ng_t_c_t_c_tea_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/presentation/menu_trang_ch_page/menu_trang_ch_page.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hunh_minh_s_application3/widgets/custom_bottom_bar.dart';
import 'package:hunh_minh_s_application3/widgets/custom_search_view.dart';

class MenuTrangHThNgCAHNgTCTCTeaScreen extends StatelessWidget {
  MenuTrangHThNgCAHNgTCTCTeaScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10003,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildContainer144(context),
              SizedBox(height: 26.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 2.h),
                          child: Text(
                            "Hệ thống Túc Tắc tea",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        SizedBox(height: 11.v),
                        _buildUserProfile(context),
                      ],
                    ),
                  ),
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
  Widget _buildContainer144(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStatusBarMobile1,
            height: 16.v,
            width: 389.h,
          ),
          CustomAppBar(
            title: AppbarTitle(
              text: "Hệ thống cửa hàng Túc Tắc Tea",
              margin: EdgeInsets.only(left: 16.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgImage227,
                margin: EdgeInsets.only(
                  left: 22.h,
                  top: 1.v,
                  bottom: 2.v,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgImage231,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 3.v,
                  bottom: 3.v,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgImage225,
                margin: EdgeInsets.only(
                  left: 23.h,
                  right: 22.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              right: 22.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Tìm kiếm cửa hàng gần bạn",
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgMap1,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                  margin: EdgeInsets.only(
                    left: 21.h,
                    top: 10.v,
                    bottom: 10.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 11.v,
                    bottom: 11.v,
                  ),
                  child: Text(
                    "Bản đồ",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 3.v,
        );
      },
      itemCount: 7,
      itemBuilder: (context, index) {
        return UserprofileItemWidget();
      },
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
