import '../trang_u_i_mua_t_i_c_a_h_ng_khi_b_m_ch_n_icon_u_page/widgets/userprofilelist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class TrangUIMuaTICAHNgKhiBMChNIconUPage extends StatefulWidget {
  const TrangUIMuaTICAHNgKhiBMChNIconUPage({Key? key})
      : super(
          key: key,
        );

  @override
  TrangUIMuaTICAHNgKhiBMChNIconUPageState createState() =>
      TrangUIMuaTICAHNgKhiBMChNIconUPageState();
}

class TrangUIMuaTICAHNgKhiBMChNIconUPageState
    extends State<TrangUIMuaTICAHNgKhiBMChNIconUPage>
    with AutomaticKeepAliveClientMixin<TrangUIMuaTICAHNgKhiBMChNIconUPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray10003,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineGray9001e,
          child: Column(
            children: [
              SizedBox(height: 13.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 13.h,
                  right: 16.h,
                ),
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
                    _buildUserProfileList(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 11.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        return UserprofilelistItemWidget();
      },
    );
  }
}
