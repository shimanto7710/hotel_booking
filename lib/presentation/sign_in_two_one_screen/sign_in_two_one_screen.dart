import 'controller/sign_in_two_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/core/utils/validation_functions.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_outlined_button.dart';
import 'package:shimanto_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInTwoOneScreen extends GetWidget<SignInTwoOneController> {
  SignInTwoOneScreen({Key? key}) : super(key: key);

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
                                horizontal: 17.h, vertical: 7.v),
                            child: Column(children: [
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
                              SizedBox(height: 44.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text("lbl_login2".tr,
                                          style: TextStyle(
                                              color: appTheme.gray800,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w600)))),
                              SizedBox(height: 42.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text("lbl_email_address".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 10.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w300)))),
                              SizedBox(height: 14.v),
                              _buildEmail(),
                              SizedBox(height: 34.v),
                              _buildPasswordStack(),
                              SizedBox(height: 33.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text("msg_forget_passward".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 14.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w500)))),
                              SizedBox(height: 52.v),
                              _buildLogInButton(),
                              SizedBox(height: 14.v),
                              _buildLineThreeRow(),
                              SizedBox(height: 14.v),
                              _buildLoginWithGoogleButton(),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: CustomTextFormField(
            controller: controller.emailController,
            hintText: "msg_banner00_d_gmail_com".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Obx(() => CustomTextFormField(
        controller: controller.passwordController,
        textInputAction: TextInputAction.done,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.only(left: 30.h, right: 1.h, bottom: 11.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEditHide,
                    height: 18.adaptSize,
                    width: 18.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 29.v),
        obscureText: controller.isShowPassword.value,
        borderDecoration: TextFormFieldStyleHelper.underLineGray1));
  }

  /// Section Widget
  Widget _buildPasswordStack() {
    return SizedBox(
        height: 55.v,
        width: 325.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("lbl_password".tr,
                        style: TextStyle(
                            color: appTheme.gray80001,
                            fontSize: 10.fSize,
                            fontFamily: 'Urbane',
                            fontWeight: FontWeight.w300)),
                    SizedBox(height: 12.v),
                    _buildPassword()
                  ])),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 13.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            height: 11.adaptSize,
                            width: 11.adaptSize,
                            margin: EdgeInsets.only(top: 1.v),
                            padding: EdgeInsets.symmetric(
                                horizontal: 4.h, vertical: 2.v),
                            decoration: AppDecoration.fillPrimaryContainer
                                .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder5),
                            child: CustomImageView(
                                imagePath: ImageConstant.img,
                                height: 6.v,
                                width: 1.h,
                                alignment: Alignment.center)),
                        Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text("lbl_wrong_password".tr,
                                style: TextStyle(
                                    color: theme.colorScheme.primaryContainer,
                                    fontSize: 10.fSize,
                                    fontFamily: 'Urbane',
                                    fontWeight: FontWeight.w300)))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildLogInButton() {
    return CustomElevatedButton(
        text: "lbl_log_in3".tr,
        margin: EdgeInsets.only(left: 8.h, right: 7.h),
        buttonStyle: CustomButtonStyles.fillGray);
  }

  /// Section Widget
  Widget _buildLineThreeRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: SizedBox(width: 148.h, child: Divider())),
          Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Text("lbl_or".tr,
                  style: TextStyle(
                      color: appTheme.gray80001,
                      fontSize: 14.fSize,
                      fontFamily: 'Urbane',
                      fontWeight: FontWeight.w500))),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8.v),
              child: SizedBox(width: 157.h, child: Divider(indent: 9.h)))
        ]));
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton() {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        margin: EdgeInsets.symmetric(horizontal: 8.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 4.h),
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
