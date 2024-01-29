import '../menu_trang_ch_page/widgets/dynamictextprop_item_widget.dart';
import '../menu_trang_ch_page/widgets/mnmitwo_item_widget.dart';
import '../menu_trang_ch_page/widgets/slider_item_widget.dart';
import '../menu_trang_ch_page/widgets/trsuacomponent_item_widget.dart';
import '../menu_trang_ch_page/widgets/viewhierarchy_item_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MenuTrangChPage extends StatelessWidget {
  MenuTrangChPage({Key? key})
      : super(
          key: key,
        );

  int sliderIndex = 1;

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 2.v),
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  _buildContainer105(context),
                  SizedBox(height: 15.v),
                  _buildContainer104(context),
                  _buildSlider(context),
                  SizedBox(height: 16.v),
                  _buildContainer121(context),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 21.h),
                      child: Text(
                        "Gợi ý cho riêng bạn",
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildTrSuaComponent(context),
                  SizedBox(height: 16.v),
                  _buildKhMPhThM(context),
                  SizedBox(height: 1.v),
                  _buildViewHierarchy(context),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                    child: CustomSearchView(
                      controller: searchController,
                      hintText: "Bạn muốn tìm món nào?",
                    ),
                  ),
                  SizedBox(height: 12.v),
                  _buildDynamicTextProp(context),
                  SizedBox(height: 14.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "Món mới phải thử",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildMnmiTwo(context),
                  SizedBox(height: 20.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "Danh mục 1",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildTrsaOne1(context),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 5.h,
                    ),
                    child: _buildTrsaOne(
                      context,
                      text1: "Trà sữa 3",
                      text2: "69.000đ",
                      text3: "Trà sữa 4",
                      text4: "69.000đ",
                    ),
                  ),
                  SizedBox(height: 15.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Text(
                        "Danh mục 2",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 5.h,
                    ),
                    child: _buildTrsaOne(
                      context,
                      text1: "Trà sữa 1",
                      text2: "69.000đ",
                      text3: "Trà sữa 2",
                      text4: "69.000đ",
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 22.h,
                      right: 5.h,
                    ),
                    child: _buildTrsaOne(
                      context,
                      text1: "Trà sữa 3",
                      text2: "69.000đ",
                      text3: "Trà sữa 4",
                      text4: "69.000đ",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 58.v,
      leadingWidth: 39.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgImage154,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 14.v,
          bottom: 14.v,
        ),
      ),
      title: AppbarSubtitleTwo(
        text: "Khoa ơi, Hôm nay bạn muốn uống gì?",
        margin: EdgeInsets.only(left: 13.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage159,
          margin: EdgeInsets.fromLTRB(22.h, 19.v, 16.h, 1.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage150,
          margin: EdgeInsets.fromLTRB(3.h, 21.v, 16.h, 3.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage155,
          margin: EdgeInsets.only(
            left: 25.h,
            top: 18.v,
            right: 38.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildChangePoints(BuildContext context) {
    return CustomElevatedButton(
      height: 31.v,
      width: 84.h,
      text: "Đổi điểm",
      margin: EdgeInsets.only(bottom: 11.v),
      buttonTextStyle: theme.textTheme.bodySmall!,
    );
  }

  /// Section Widget
  Widget _buildContainer105(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 9.v,
      ),
      decoration: AppDecoration.outlinePrimary2.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nguyễn Vũ Đăng Khoa",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 5.v),
                      Text(
                        "Thành viên Vip",
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                _buildChangePoints(context),
              ],
            ),
          ),
          SizedBox(height: 22.v),
          Container(
            margin: EdgeInsets.only(
              left: 7.h,
              right: 5.h,
            ),
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
  Widget _buildContainer104(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 17.h,
        right: 11.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgShoppingCart2,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(left: 5.h),
                ),
                SizedBox(height: 19.v),
                Text(
                  "Giao hàng",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 29,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsAccessibility,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(left: 1.h),
                ),
                SizedBox(height: 19.v),
                Text(
                  "Mang đi",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 35,
          ),
          Padding(
            padding: EdgeInsets.only(top: 16.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPlayCircle1,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 17.v),
                Text(
                  "Trà sữa",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(
            flex: 35,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 16.v,
              right: 17.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPlaylistAddCircle,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  margin: EdgeInsets.only(left: 6.h),
                ),
                SizedBox(height: 17.v),
                Text(
                  "Đổi điểm",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSlider(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 18.h,
        right: 9.h,
      ),
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: 184.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            sliderIndex = index;
          },
        ),
        itemCount: 2,
        itemBuilder: (context, index, realIndex) {
          return SliderItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildChangePoints1(BuildContext context) {
    return CustomElevatedButton(
      height: 30.v,
      width: 82.h,
      text: "Đổi điểm",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL15,
      buttonTextStyle: CustomTextStyles.bodySmallYellow90004,
      alignment: Alignment.centerRight,
    );
  }

  /// Section Widget
  Widget _buildContainer121(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 21.h,
        right: 5.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlinePrimary3.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 3.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Đổi điểm",
                  style: CustomTextStyles.bodySmallGray40001,
                ),
                Spacer(),
                Text(
                  "Xem thêm",
                  style: theme.textTheme.labelLarge,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage205,
                  height: 16.v,
                  width: 13.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 8.h,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            margin: EdgeInsets.only(right: 3.h),
            padding: EdgeInsets.symmetric(
              horizontal: 9.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlinePrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage200,
                  height: 69.v,
                  width: 68.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 2.h,
                    top: 3.v,
                    bottom: 4.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    top: 5.v,
                    bottom: 33.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Túc Tắc Tea",
                        style: CustomTextStyles.bodySmallOnPrimary_1,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "Mua 2 tặng 1",
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 23.v),
                  child: Column(
                    children: [
                      Text(
                        "Bạn đang có 90 Điểm",
                        style: CustomTextStyles.bodySmallOnPrimary_1,
                      ),
                      SizedBox(height: 6.v),
                      _buildChangePoints1(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTrSuaComponent(BuildContext context) {
    return SizedBox(
      height: 217.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 19.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 14.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return TrsuacomponentItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildKhMPhThM(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 3.v),
            child: Text(
              "Khám phá thêm",
              style: theme.textTheme.bodySmall,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "Xem thêm",
              style: CustomTextStyles.bodySmallYellow90004,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage202,
            height: 14.v,
            width: 13.h,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(
              left: 5.h,
              top: 2.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchy(BuildContext context) {
    return SizedBox(
      height: 171.v,
      child: ListView.separated(
        padding: EdgeInsets.only(left: 19.h),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 12.h,
          );
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return ViewhierarchyItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDynamicTextProp(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 28.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 82.v,
            crossAxisCount: 5,
            mainAxisSpacing: 27.h,
            crossAxisSpacing: 27.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 20,
          itemBuilder: (context, index) {
            return DynamictextpropItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMnmiTwo(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 1.h,
        ),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 226.v,
            crossAxisCount: 2,
            mainAxisSpacing: 14.h,
            crossAxisSpacing: 14.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return MnmitwoItemWidget();
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTrsaOne1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 22.h,
        right: 3.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTrSAThree(
            context,
            text1: "Trà sữa 1",
            text2: "69.000đ",
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 14.h,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage190,
                  height: 174.adaptSize,
                  width: 174.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(left: 2.h),
                ),
                SizedBox(height: 7.v),
                Text(
                  "Trà sữa 2",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 5.v),
                Padding(
                  padding: EdgeInsets.only(left: 2.h),
                  child: Text(
                    "69.000đ",
                    style: CustomTextStyles.bodySmall11,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTrSAThree(
    BuildContext context, {
    required String text1,
    required String text2,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage190,
          height: 174.adaptSize,
          width: 174.adaptSize,
          radius: BorderRadius.circular(
            4.h,
          ),
        ),
        SizedBox(height: 12.v),
        Text(
          text1,
          style: theme.textTheme.bodySmall!.copyWith(
            color: theme.colorScheme.primary.withOpacity(1),
          ),
        ),
        SizedBox(height: 5.v),
        Padding(
          padding: EdgeInsets.only(left: 3.h),
          child: Text(
            text2,
            style: CustomTextStyles.bodySmall11.copyWith(
              color: theme.colorScheme.primary.withOpacity(1),
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTrsaOne(
    BuildContext context, {
    required String text1,
    required String text2,
    required String text3,
    required String text4,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage190,
              height: 174.adaptSize,
              width: 174.adaptSize,
              radius: BorderRadius.circular(
                4.h,
              ),
            ),
            SizedBox(height: 12.v),
            Text(
              text1,
              style: theme.textTheme.bodySmall!.copyWith(
                color: theme.colorScheme.primary.withOpacity(1),
              ),
            ),
            SizedBox(height: 5.v),
            Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Text(
                text2,
                style: CustomTextStyles.bodySmall11.copyWith(
                  color: theme.colorScheme.primary.withOpacity(1),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 14.h,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage190,
                height: 174.adaptSize,
                width: 174.adaptSize,
                radius: BorderRadius.circular(
                  4.h,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                text3,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: theme.colorScheme.primary.withOpacity(1),
                ),
              ),
              SizedBox(height: 5.v),
              Text(
                text4,
                style: CustomTextStyles.bodySmall11.copyWith(
                  color: theme.colorScheme.primary.withOpacity(1),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
