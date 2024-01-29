import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/presentation/nh_p_m_khuy_n_m_i_voucher_page/nh_p_m_khuy_n_m_i_voucher_page.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';
import 'package:hunh_minh_s_application3/widgets/custom_text_form_field.dart';

class NhPMKhuyNMIIIMTabContainerScreen extends StatefulWidget {
  const NhPMKhuyNMIIIMTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NhPMKhuyNMIIIMTabContainerScreenState createState() =>
      NhPMKhuyNMIIIMTabContainerScreenState();
}

class NhPMKhuyNMIIIMTabContainerScreenState
    extends State<NhPMKhuyNMIIIMTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController enterPromoCodeController = TextEditingController();

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
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 49.v),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 817.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        _buildRowContainer(context),
                        _buildPromoCodeContainer(context),
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
  Widget _buildRowContainer(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(
          right: 1.h,
          bottom: 766.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 14.h,
          vertical: 12.v,
        ),
        decoration: AppDecoration.outlinePrimary12.copyWith(
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
      ),
    );
  }

  /// Section Widget
  Widget _buildPromoCodeContainer(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomElevatedButton(
            height: 51.v,
            text: "Nhập mã khuyến mãi",
            buttonStyle: CustomButtonStyles.outlinePrimaryTL151,
            buttonTextStyle: theme.textTheme.titleSmall!,
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.only(
              left: 19.h,
              right: 32.h,
            ),
            child: Row(
              children: [
                Expanded(
                  child: CustomTextFormField(
                    controller: enterPromoCodeController,
                    hintText: "Nhập mã khuyến mãi",
                    textInputAction: TextInputAction.done,
                  ),
                ),
                CustomElevatedButton(
                  height: 28.v,
                  width: 60.h,
                  text: "Áp dụng",
                  margin: EdgeInsets.only(left: 4.h),
                  buttonStyle: CustomButtonStyles.outlinePrimaryTL43,
                  buttonTextStyle: theme.textTheme.labelLarge!,
                ),
              ],
            ),
          ),
          SizedBox(height: 26.v),
          Container(
            height: 54.v,
            width: 389.h,
            decoration: BoxDecoration(
              color: appTheme.whiteA70001,
              borderRadius: BorderRadius.circular(
                4.h,
              ),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.primary,
                  spreadRadius: 2.h,
                  blurRadius: 2.h,
                  offset: Offset(
                    0,
                    0,
                  ),
                ),
              ],
            ),
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary.withOpacity(1),
              unselectedLabelColor: appTheme.red30001,
              tabs: [
                Tab(
                  child: Text(
                    "Voucher của bạn",
                  ),
                ),
                Tab(
                  child: Text(
                    "Đổi điểm",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 606.v,
            child: TabBarView(
              controller: tabviewController,
              children: [
                NhPMKhuyNMIVoucherPage(),
                NhPMKhuyNMIVoucherPage(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
