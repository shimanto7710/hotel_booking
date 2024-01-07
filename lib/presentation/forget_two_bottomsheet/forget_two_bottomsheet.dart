import 'controller/forget_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';

class ForgetTwoBottomsheet extends StatelessWidget {
  ForgetTwoBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ForgetTwoController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 25.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowLeftGray800,
                height: 12.v,
                width: 6.h,
                margin: EdgeInsets.only(
                  top: 5.v,
                  bottom: 7.v,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 7.h),
                child: Text(
                  "lbl_forget_password".tr,
                  style: TextStyle(
                    color: appTheme.gray800,
                    fontSize: 20.fSize,
                    fontFamily: 'Urbane',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 79.v),
          Text(
            "msg_please_enter_your2".tr,
            style: TextStyle(
              color: appTheme.gray80001,
              fontSize: 14.fSize,
              fontFamily: 'Urbane',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 6.v),
          Container(
            width: 273.h,
            margin: EdgeInsets.only(right: 51.h),
            child: Text(
              "msg_we_have_send_a_verification".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: appTheme.gray80001,
                fontSize: 13.fSize,
                fontFamily: 'Gilroy-Regular',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 161.v),
          CustomElevatedButton(
            text: "lbl_verify_me2".tr,
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
