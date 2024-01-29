import '../nh_p_m_khuy_n_m_i_voucher_page/widgets/userprofile2_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NhPMKhuyNMIVoucherPage extends StatefulWidget {
  const NhPMKhuyNMIVoucherPage({Key? key})
      : super(
          key: key,
        );

  @override
  NhPMKhuyNMIVoucherPageState createState() => NhPMKhuyNMIVoucherPageState();
}

class NhPMKhuyNMIVoucherPageState extends State<NhPMKhuyNMIVoucherPage>
    with AutomaticKeepAliveClientMixin<NhPMKhuyNMIVoucherPage> {
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
                _buildUserProfileSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 10.h,
        right: 16.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 171.h,
            child: Divider(
              color: appTheme.yellow800,
            ),
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "Sẵn sàng sử dụng",
              style: theme.textTheme.labelLarge,
            ),
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 20.v,
                );
              },
              itemCount: 2,
              itemBuilder: (context, index) {
                return Userprofile2ItemWidget();
              },
            ),
          ),
        ],
      ),
    );
  }
}
