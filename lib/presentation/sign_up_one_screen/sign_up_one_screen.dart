import 'controller/sign_up_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/core/utils/validation_functions.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_outlined_button.dart';
import 'package:shimanto_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpOneScreen extends GetWidget<SignUpOneController> {
  SignUpOneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 14.h, vertical: 1.v),
                            child: Column(children: [
                              SizedBox(height: 6.v),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowLeft,
                                  height: 35.adaptSize,
                                  width: 35.adaptSize,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(left: 8.h),
                                  onTap: () {
                                    onTapImgArrowLeft();
                                  }),
                              CustomImageView(
                                  imagePath: ImageConstant.imgOohgoB,
                                  height: 73.v,
                                  width: 339.h),
                              SizedBox(height: 38.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Text("lbl_signup2".tr,
                                          style: TextStyle(
                                              color: appTheme.gray800,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w600)))),
                              SizedBox(height: 31.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Text("lbl_user_name".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 10.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w300)))),
                              SizedBox(height: 13.v),
                              _buildUserName(),
                              SizedBox(height: 39.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Text("lbl_email_address".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 10.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w300)))),
                              SizedBox(height: 20.v),
                              _buildEmail(),
                              SizedBox(height: 39.v),
                              _buildPassword(),
                              SizedBox(height: 35.v),
                              _buildSignUpButton(),
                              SizedBox(height: 23.v),
                              _buildOrRow(),
                              SizedBox(height: 12.v),
                              _buildLoginWithGoogleButton(),
                              SizedBox(height: 28.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 81.h),
                                      child: Row(children: [
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 1.v),
                                            child: Text(
                                                "msg_have_an_account".tr,
                                                style: TextStyle(
                                                    color: appTheme.gray80001,
                                                    fontSize: 14.fSize,
                                                    fontFamily: 'Oxygen',
                                                    fontWeight:
                                                        FontWeight.w700))),
                                        Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text("lbl_log_in2".tr,
                                                style: TextStyle(
                                                    color: theme
                                                        .colorScheme.primary,
                                                    fontSize: 14.fSize,
                                                    fontFamily: 'Oxygen',
                                                    fontWeight: FontWeight.w700,
                                                    decoration: TextDecoration
                                                        .underline)))
                                      ]))),
                              SizedBox(height: 43.v),
                              SizedBox(
                                  width: 153.h,
                                  child: Divider(color: appTheme.gray800))
                            ])))))));
  }

  /// Section Widget
  Widget _buildUserName() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: CustomTextFormField(
            controller: controller.userNameController,
            hintText: "msg_mr_banner_sharma".tr));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_type_here_gmail_com".tr,
            contentPadding: EdgeInsets.symmetric(horizontal: 2.h)));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Container(
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_password".tr,
              style: TextStyle(
                  color: appTheme.gray80001,
                  fontSize: 10.fSize,
                  fontFamily: 'Urbane',
                  fontWeight: FontWeight.w300)),
          SizedBox(height: 17.v),
          Padding(
              padding: EdgeInsets.only(right: 8.h),
              child: Obx(() => CustomTextFormField(
                  controller: controller.passwordController,
                  hintText: "msg_type_8_digit_password".tr,
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: InkWell(
                      onTap: () {
                        controller.isShowPassword.value =
                            !controller.isShowPassword.value;
                      },
                      child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 2.v, 4.h, 2.v),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgSearch,
                              height: 10.v,
                              width: 15.h))),
                  suffixConstraints: BoxConstraints(maxHeight: 24.v),
                  validator: (value) {
                    if (value == null ||
                        (!isValidPassword(value, isRequired: true))) {
                      return "err_msg_please_enter_valid_password".tr;
                    }
                    return null;
                  },
                  obscureText: controller.isShowPassword.value)))
        ]));
  }

  /// Section Widget
  Widget _buildSignUpButton() {
    return CustomElevatedButton(
        text: "lbl_sign_up".tr,
        margin: EdgeInsets.symmetric(horizontal: 11.h),
        buttonStyle: CustomButtonStyles.fillGray);
  }

  /// Section Widget
  Widget _buildOrRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
                  child: SizedBox(width: 148.h, child: Divider())),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text("lbl_or".tr,
                      style: TextStyle(
                          color: appTheme.gray80001,
                          fontSize: 16.fSize,
                          fontFamily: 'Oxygen',
                          fontWeight: FontWeight.w700))),
              Padding(
                  padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
                  child: SizedBox(width: 153.h, child: Divider(indent: 5.h)))
            ]));
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton() {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        margin: EdgeInsets.symmetric(horizontal: 11.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleicons095121,
                height: 50.adaptSize,
                width: 50.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineGrayTL6);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
