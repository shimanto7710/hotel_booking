import 'controller/forget_three_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/core/utils/validation_functions.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_text_form_field.dart';

class ForgetThreeBottomsheet extends StatelessWidget {
  ForgetThreeBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  ForgetThreeController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL22,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24.v,
                    child: VerticalDivider(
                      width: 6.h,
                      thickness: 6.v,
                      color: appTheme.gray800,
                      indent: 3.h,
                      endIndent: 6.h,
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
          ),
          SizedBox(height: 52.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "msg_please_enter_your3".tr,
                style: TextStyle(
                  color: appTheme.gray80001,
                  fontSize: 14.fSize,
                  fontFamily: 'Urbane',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(height: 31.v),
          _buildPasswordSection(),
          SizedBox(height: 41.v),
          _buildConfirmPasswordSection(),
          SizedBox(height: 55.v),
          CustomElevatedButton(
            text: "lbl_next".tr,
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordSection() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "lbl_new_password".tr,
              style: TextStyle(
                color: appTheme.gray80001,
                fontSize: 10.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Obx(
              () => CustomTextFormField(
                controller: controller.newpasswordController,
                hintText: "lbl_brohulk".tr,
                textInputType: TextInputType.visiblePassword,
                suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword.value =
                        !controller.isShowPassword.value;
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 3.v, 4.h, 3.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 10.v,
                      width: 15.h,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 25.v,
                ),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: controller.isShowPassword.value,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmPasswordSection() {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Text(
              "msg_conferm_new_password".tr,
              style: TextStyle(
                color: appTheme.gray80001,
                fontSize: 10.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 1.h),
            child: Obx(
              () => CustomTextFormField(
                controller: controller.newpasswordController1,
                hintText: "msg_type_8_digit_password".tr,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.visiblePassword,
                suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword1.value =
                        !controller.isShowPassword1.value;
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 2.v, 4.h, 2.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 10.v,
                      width: 15.h,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 24.v,
                ),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password".tr;
                  }
                  return null;
                },
                obscureText: controller.isShowPassword1.value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
