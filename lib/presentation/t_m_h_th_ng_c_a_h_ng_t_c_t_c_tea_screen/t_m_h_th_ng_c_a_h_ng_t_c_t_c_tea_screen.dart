import '../t_m_h_th_ng_c_a_h_ng_t_c_t_c_tea_screen/widgets/userprofile6_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_title_searchview.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_trailing_image_one.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/custom_app_bar.dart';

class TMHThNgCAHNgTCTCTeaScreen extends StatelessWidget {
  TMHThNgCAHNgTCTCTeaScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

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
              _buildAppBar(context),
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 11.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Các cửa hàng khác",
                          style: theme.textTheme.titleSmall,
                        ),
                        SizedBox(height: 8.v),
                        _buildUserProfile(context),
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
  Widget _buildAppBar(BuildContext context) {
    return SizedBox(
      height: 68.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomAppBar(
            height: 68.v,
            title: AppbarTitleSearchview(
              margin: EdgeInsets.only(left: 32.h),
              hintText: "Tìm kiếm cửa hàng gần bạn",
              controller: searchController,
            ),
            actions: [
              AppbarTrailingImageOne(
                imagePath: ImageConstant.imgMap1,
                margin: EdgeInsets.only(
                  left: 21.h,
                  top: 25.v,
                  right: 22.h,
                ),
              ),
              AppbarSubtitle(
                text: "Bản đồ",
                margin: EdgeInsets.fromLTRB(6.h, 26.v, 48.h, 1.v),
              ),
            ],
            styleType: Style.bgShadow_1,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgStatusBarMobile11,
            height: 16.v,
            width: 389.h,
            alignment: Alignment.topCenter,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: ListView.separated(
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
        itemCount: 6,
        itemBuilder: (context, index) {
          return Userprofile6ItemWidget();
        },
      ),
    );
  }
}
