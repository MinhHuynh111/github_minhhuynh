import '../trang_u_i_giao_h_ng_khi_b_m_ch_n_icon_u_i_g_c_page/widgets/promotioncard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TrangUIGiaoHNgKhiBMChNIconUIGCPage extends StatefulWidget {
  const TrangUIGiaoHNgKhiBMChNIconUIGCPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrangUIGiaoHNgKhiBMChNIconUIGCPageState createState() =>
      TrangUIGiaoHNgKhiBMChNIconUIGCPageState();
}

class TrangUIGiaoHNgKhiBMChNIconUIGCPageState
    extends State<TrangUIGiaoHNgKhiBMChNIconUIGCPage>
    with AutomaticKeepAliveClientMixin<TrangUIGiaoHNgKhiBMChNIconUIGCPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10003,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 26.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Sắp hết hạn",
                          style: theme.textTheme.labelLarge,
                        ),
                      ),
                      SizedBox(height: 11.v),
                      _buildPromotionCard(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPromotionCard(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 11.v,
        );
      },
      itemCount: 4,
      itemBuilder: (context, index) {
        return PromotioncardItemWidget();
      },
    );
  }
}
