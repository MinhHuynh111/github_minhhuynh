import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/presentation/trang_u_i_giao_h_ng_khi_b_m_ch_n_icon_u_i_g_c_page/trang_u_i_giao_h_ng_khi_b_m_ch_n_icon_u_i_g_c_page.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/custom_app_bar.dart';

class TrangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreen extends StatefulWidget {
  const TrangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  TrangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreenState createState() =>
      TrangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreenState();
}

class TrangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreenState
    extends State<TrangUIGiaoHNgKhiBMChNIconUIGCTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10003,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildContainer234(context),
              SizedBox(height: 1.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildTabview(context),
                      SizedBox(
                        height: 706.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            TrangUIGiaoHNgKhiBMChNIconUIGCPage(),
                            TrangUIGiaoHNgKhiBMChNIconUIGCPage(),
                          ],
                        ),
                      ),
                    ],
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
  Widget _buildContainer234(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStatusBarMobile3,
            height: 16.v,
            width: 389.h,
          ),
          SizedBox(height: 9.v),
          CustomAppBar(
            height: 23.v,
            leadingWidth: 33.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgImage300,
              margin: EdgeInsets.only(
                left: 18.h,
                bottom: 1.v,
              ),
            ),
            centerTitle: true,
            title: AppbarSubtitleTwo(
              text: "Phiếu ưu đãi của bạn",
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return SizedBox(
      height: 55.v,
      width: double.maxFinite,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.yellow900,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: theme.colorScheme.primary.withOpacity(1),
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w400,
        ),
        indicatorColor: appTheme.yellow800,
        tabs: [
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    "Mua tại cửa hàng",
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage302,
                  height: 17.v,
                  width: 16.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(left: 11.h),
                ),
              ],
            ),
          ),
          Tab(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Bán Online",
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage299,
                  height: 13.adaptSize,
                  width: 13.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 18.h,
                    top: 2.v,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
