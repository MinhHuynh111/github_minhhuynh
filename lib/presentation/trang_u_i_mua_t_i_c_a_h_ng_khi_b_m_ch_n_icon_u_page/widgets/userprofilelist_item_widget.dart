import 'package:flutter/material.dart';
import 'package:hunh_minh_s_application3/core/app_export.dart';
import 'package:hunh_minh_s_application3/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  const UserprofilelistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlinePrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 74.v,
            width: 82.h,
            margin: EdgeInsets.symmetric(vertical: 10.v),
            decoration: BoxDecoration(
              color: theme.colorScheme.secondaryContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 22.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Cafe sữa đá chỉ 35k",
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 20.v),
                Container(
                  width: 226.h,
                  margin: EdgeInsets.only(left: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 6.v,
                          bottom: 12.v,
                        ),
                        child: Text(
                          "Chỉ 59 điểm",
                          style: CustomTextStyles.bodySmallRed30001,
                        ),
                      ),
                      CustomElevatedButton(
                        height: 36.v,
                        width: 102.h,
                        text: "Đổi điểm ngay",
                        buttonStyle: CustomButtonStyles.fillGray,
                        buttonTextStyle: theme.textTheme.bodySmall!,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
