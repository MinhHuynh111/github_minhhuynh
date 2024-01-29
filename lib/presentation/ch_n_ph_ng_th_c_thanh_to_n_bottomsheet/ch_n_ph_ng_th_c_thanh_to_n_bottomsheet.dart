import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ChNPhNgThCThanhToNBottomsheet extends StatelessWidget {
  const ChNPhNgThCThanhToNBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: CustomElevatedButton(
        height: 51.v,
        width: 388.h,
        text: "Phương thức thanh toán",
        margin: EdgeInsets.only(
          right: 2.h,
          bottom: 530.v,
        ),
        buttonStyle: CustomButtonStyles.fillWhiteA,
        buttonTextStyle: theme.textTheme.titleSmall!,
      ),
    );
  }
}
