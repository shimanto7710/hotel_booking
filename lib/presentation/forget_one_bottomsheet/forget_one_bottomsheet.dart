import 'controller/forget_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/core/utils/validation_functions.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_text_form_field.dart';

class ForgetOneBottomsheet extends StatelessWidget {
  ForgetOneBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ForgetOneController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(
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
          ),
          SizedBox(height: 79.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_please_enter_your".tr,
              style: TextStyle(
                color: appTheme.gray80001,
                fontSize: 14.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            width: 262.h,
            margin: EdgeInsets.only(
              left: 1.h,
              right: 63.h,
            ),
            child: Text(
              "msg_we_will_send_a_verification".tr,
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
          SizedBox(height: 44.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              "lbl_email_address".tr,
              style: TextStyle(
                color: appTheme.gray80001,
                fontSize: 10.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: CustomTextFormField(
              controller: controller.emailController,
              hintText: "msg_banneroo_d_gmail_com".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.emailAddress,
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 58.v),
          CustomElevatedButton(
            text: "lbl_next".tr,
            margin: EdgeInsets.only(left: 2.h),
          ),
          SizedBox(height: 15.v),
        ],
      ),
    );
  }
}
