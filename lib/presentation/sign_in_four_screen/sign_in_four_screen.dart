import 'controller/sign_in_four_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/core/utils/validation_functions.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_outlined_button.dart';
import 'package:shimanto_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInFourScreen extends GetWidget<SignInFourController> {
  SignInFourScreen({Key? key}) : super(key: key);

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
                                horizontal: 11.h, vertical: 7.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgArrowLeft,
                                      height: 35.adaptSize,
                                      width: 35.adaptSize,
                                      margin: EdgeInsets.only(left: 14.h),
                                      onTap: () {
                                        onTapImgArrowLeft();
                                      }),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgOohgoB,
                                      height: 73.v,
                                      width: 339.h,
                                      margin: EdgeInsets.only(left: 14.h)),
                                  SizedBox(height: 44.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Text("lbl_login2".tr,
                                          style: TextStyle(
                                              color: appTheme.gray800,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w600))),
                                  SizedBox(height: 42.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Text("lbl_email_address".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 10.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w300))),
                                  SizedBox(height: 14.v),
                                  _buildEmailField(),
                                  SizedBox(height: 35.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Text("lbl_password".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 10.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w300))),
                                  SizedBox(height: 12.v),
                                  _buildPasswordField(),
                                  SizedBox(height: 33.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 14.h),
                                      child: Text("msg_forget_passward".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 14.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w500))),
                                  SizedBox(height: 42.v),
                                  _buildLoginButton(),
                                  SizedBox(height: 14.v),
                                  _buildDividerRow(),
                                  SizedBox(height: 14.v),
                                  _buildGoogleLoginButton(),
                                  SizedBox(height: 29.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 72.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Text(
                                                        "lbl_not_a_member".tr,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .gray80001,
                                                            fontSize: 14.fSize,
                                                            fontFamily:
                                                                'Oxygen',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700))),
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 3.h),
                                                    child: Text(
                                                        "lbl_join_now".tr,
                                                        style: TextStyle(
                                                            color: theme
                                                                .colorScheme
                                                                .primary,
                                                            fontSize: 14.fSize,
                                                            fontFamily:
                                                                'Oxygen',
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)))
                                              ]))),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  Widget _buildEmailField() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: CustomTextFormField(
            controller: controller.emailFieldController,
            hintText: "msg_banner00_d_gmail_com".tr,
            textInputType: TextInputType.emailAddress,
            alignment: Alignment.center,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildPasswordField() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Obx(() => CustomTextFormField(
            controller: controller.passwordFieldController,
            textInputAction: TextInputAction.done,
            alignment: Alignment.center,
            suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                    margin:
                        EdgeInsets.only(left: 30.h, right: 1.h, bottom: 11.v),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgEditHide,
                        height: 18.adaptSize,
                        width: 18.adaptSize))),
            suffixConstraints: BoxConstraints(maxHeight: 29.v),
            obscureText: controller.isShowPassword.value,
            borderDecoration: TextFormFieldStyleHelper.underLineGray1)));
  }

  /// Section Widget
  Widget _buildLogIn() {
    return CustomElevatedButton(
        width: 324.h, text: "lbl_log_in3".tr, alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 60.v,
            width: 324.h,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 19.v),
                      child: Text("lbl_login".tr,
                          style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              fontSize: 14.fSize,
                              fontFamily: 'Urbane',
                              fontWeight: FontWeight.w500)))),
              _buildLogIn()
            ])));
  }

  /// Section Widget
  Widget _buildDividerRow() {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: SizedBox(width: 148.h, child: Divider())),
              Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text("lbl_or".tr,
                      style: TextStyle(
                          color: appTheme.gray80001,
                          fontSize: 14.fSize,
                          fontFamily: 'Urbane',
                          fontWeight: FontWeight.w500))),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.v),
                  child: SizedBox(width: 154.h, child: Divider(indent: 6.h)))
            ])));
  }

  /// Section Widget
  Widget _buildGoogleLoginButton() {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        margin: EdgeInsets.symmetric(horizontal: 14.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleicons095121,
                height: 50.adaptSize,
                width: 50.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineGrayTL6,
        alignment: Alignment.center);
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }
}
