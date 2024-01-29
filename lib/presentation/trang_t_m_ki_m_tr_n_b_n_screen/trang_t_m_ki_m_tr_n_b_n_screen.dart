import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/presentation/menu_trang_ch_page/menu_trang_ch_page.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hunh_minh_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hunh_minh_s_application3/widgets/custom_bottom_bar.dart';
import 'package:hunh_minh_s_application3/widgets/custom_search_view.dart';

class TrangTMKiMTrNBNScreen extends StatelessWidget {
  TrangTMKiMTrNBNScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  Completer<GoogleMapController> googleMapController = Completer();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildContainer154(context),
              _buildMap(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildContainer154(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlinePrimary1,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgStatusBarMobile8,
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
                imagePath: ImageConstant.imgImage239,
                margin: EdgeInsets.only(
                  left: 22.h,
                  top: 1.v,
                  bottom: 2.v,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgImage247,
                margin: EdgeInsets.only(
                  left: 5.h,
                  top: 4.v,
                  bottom: 4.v,
                ),
              ),
              AppbarTrailingImage(
                imagePath: ImageConstant.imgImage245,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 22.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: CustomSearchView(
                    controller: searchController,
                    hintText: "Tìm kiếm cửa hàng gần bạn",
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage246,
                  height: 17.v,
                  width: 16.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(
                    left: 14.h,
                    top: 13.v,
                    bottom: 10.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 12.v,
                    bottom: 10.v,
                  ),
                  child: Text(
                    "Danh sách",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 56.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMap(BuildContext context) {
    return SizedBox(
      height: 636.v,
      width: double.maxFinite,
      child: GoogleMap(
        //TODO: Add your Google Maps API key in AndroidManifest.xml and pod file
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            37.43296265331129,
            -122.08832357078792,
          ),
          zoom: 14.4746,
        ),
        onMapCreated: (GoogleMapController controller) {
          googleMapController.complete(controller);
        },
        zoomControlsEnabled: false,
        zoomGesturesEnabled: false,
        myLocationButtonEnabled: false,
        myLocationEnabled: false,
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
