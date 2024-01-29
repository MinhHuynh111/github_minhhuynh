import '../nh_p_m_khuy_n_m_i_i_i_m_page/widgets/userprofile3_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NhPMKhuyNMIIIMPage extends StatefulWidget {
  const NhPMKhuyNMIIIMPage({Key? key})
      : super(
          key: key,
        );

  @override
  NhPMKhuyNMIIIMPageState createState() => NhPMKhuyNMIIIMPageState();
}

class NhPMKhuyNMIIIMPageState extends State<NhPMKhuyNMIIIMPage>
    with AutomaticKeepAliveClientMixin<NhPMKhuyNMIIIMPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildLineOneColumn(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineOneColumn(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.h,
        right: 1.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 171.h,
              child: Divider(
                color: appTheme.yellow800,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            margin: EdgeInsets.only(right: 20.h),
            padding: EdgeInsets.symmetric(
              horizontal: 19.h,
              vertical: 10.v,
            ),
            decoration: AppDecoration.outlinePrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 46.adaptSize,
                  width: 46.adaptSize,
                  margin: EdgeInsets.only(top: 8.v),
                  decoration: BoxDecoration(
                    color: appTheme.gray400,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.h,
                    top: 10.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Số điểm hiện tại của bạn",
                        style: theme.textTheme.bodySmall,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "100 điểm",
                        style: CustomTextStyles.titleSmallRed30001,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.v),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(
                left: 6.h,
                right: 14.h,
              ),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 26.v,
                  );
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Userprofile3ItemWidget();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
