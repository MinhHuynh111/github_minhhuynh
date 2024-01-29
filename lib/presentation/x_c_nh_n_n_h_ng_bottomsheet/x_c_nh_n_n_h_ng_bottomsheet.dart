import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class XCNhNNHNgBottomsheet extends StatelessWidget {
  const XCNhNNHNgBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: _buildRowContainer(context),
    );
  }

  /// Section Widget
  Widget _buildRowContainer(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 1.h,
        bottom: 766.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL15,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 1.v,
            ),
            child: Text(
              "Xóa",
              style: CustomTextStyles.titleSmallGray700,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 91.h,
              top: 3.v,
            ),
            child: Text(
              "Xác nhận đơn hàng",
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }
}
