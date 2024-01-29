import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "2. Đăng nhập",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.ngNhPScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "1. Splash screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.splashScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "3. Menu - Trang chủ - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.menuTrangChContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "4. Menu - Trang Hệ thống cửa hàng Túc Tắc Tea",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.menuTrangHThNgCAHNgTCTCTeaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "5. Trang Ưu đãi",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trangUIScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "7.1 Trang ưu đãi - Giao hàng (Khi bấm chọn icon ưu đãi góc  - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .trangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8. Trang Đặt hàng",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trangTHNgScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8.2 Chọn phương thức đặt hàng",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chNPhNgThCTHNgScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8.1 Chi tiết Sản phẩm",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chiTiTSNPhMScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "8.4 Nhập mã khuyến mãi - Đổi điểm - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.nhPMKhuyNMIIIMTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "2.1 Xác nhận OTP",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.xCNhNOtpScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8.2.1 Chọn địa chỉ giao hàng",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chNAChGiaoHNgScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8.4.1 Chi tiết Ưu đãi - Voucher",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chiTiTUIVoucherScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "4.1 Trang Tìm kiếm trên bản đồ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trangTMKiMTrNBNScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "5. Trang Chi tiết Ưu đãi - Voucher",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trangChiTiTUIVoucherScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8.1 Giỏ hàng",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.giHNgScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "8.2 Chọn sản phẩm",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.chNSNPhMScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "8.2.2 Tìm Hệ thống cửa hàng Túc Tắc Tea",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.tMHThNgCAHNgTCTCTeaScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "5. Trang Chi tiết Ưu đãi - Đổi điểm",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.trangChiTiTUIIIMScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
