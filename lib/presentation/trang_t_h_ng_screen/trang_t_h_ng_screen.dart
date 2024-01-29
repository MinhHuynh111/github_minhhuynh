import '../trang_t_h_ng_screen/widgets/fortyone_item_widget.dart';
import '../trang_t_h_ng_screen/widgets/mnmiphith_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/presentation/menu_trang_ch_page/menu_trang_ch_page.dart';
import 'package:hunh_minh_s_application3/widgets/custom_bottom_bar.dart';

class TrangTHNgScreen extends StatelessWidget {
  TrangTHNgScreen({Key? key})
      : super(
          key: key,
        );

  List mnmiphithItemList = [
    {'id': 1, 'groupBy': "Món mới phải thử"},
    {'id': 2, 'groupBy': "Món mới phải thử"},
    {'id': 3, 'groupBy': "Trà sữa"},
    {'id': 4, 'groupBy': "Trà sữa"}
  ];

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _buildContainer247(context),
                SizedBox(height: 14.v),
                _buildFortyOne(context),
                SizedBox(height: 15.v),
                Padding(
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
                SizedBox(height: 15.v),
                _buildMnmiphith(context),
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
  Widget _buildFortyOne(BuildContext context) {
    return Padding(
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
          return FortyoneItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMnmiphith(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 11.h),
          child: GroupedListView<dynamic, String>(
            shrinkWrap: true,
            stickyHeaderBackgroundColor: Colors.transparent,
            elements: mnmiphithItemList,
            groupBy: (element) => element['groupBy'],
            sort: false,
            groupSeparatorBuilder: (String value) {
              return Padding(
                padding: EdgeInsets.only(
                  top: 15.v,
                  bottom: 7.v,
                ),
                child: Text(
                  value,
                  style: theme.textTheme.labelLarge!.copyWith(
                    color: theme.colorScheme.primary.withOpacity(1),
                  ),
                ),
              );
            },
            itemBuilder: (context, model) {
              return MnmiphithItemWidget();
            },
            separator: SizedBox(
              height: 6.v,
            ),
          ),
        ),
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
