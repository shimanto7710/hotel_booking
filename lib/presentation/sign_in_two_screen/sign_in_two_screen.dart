import 'controller/sign_in_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/core/utils/validation_functions.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:shimanto_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:shimanto_s_application1/widgets/custom_floating_text_field.dart';
import 'package:shimanto_s_application1/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SignInTwoScreen extends GetWidget<SignInTwoController> {
  SignInTwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              Text("lbl_flogo".tr,
                                  style: TextStyle(
                                      color: appTheme.gray800,
                                      fontSize: 35.fSize,
                                      fontFamily: 'Oxygen',
                                      fontWeight: FontWeight.w700)),
                              Text("lbl_here".tr,
                                  style: TextStyle(
                                      color: appTheme.gray800,
                                      fontSize: 15.fSize,
                                      fontFamily: 'Jura',
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: 56.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 26.h),
                                      child: Text("lbl_login2".tr,
                                          style: TextStyle(
                                              color: appTheme.gray800,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w600)))),
                              SizedBox(height: 20.v),
                              _buildEmailFloatingTextField(),
                              SizedBox(height: 18.v),
                              _buildPasswordStack(),
                              SizedBox(height: 31.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 26.h),
                                      child: Text("msg_forget_passward".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 14.fSize,
                                              fontFamily: 'Oxygen',
                                              fontWeight: FontWeight.w700)))),
                              SizedBox(height: 33.v),
                              _buildLoginButton(),
                              SizedBox(height: 13.v),
                              _buildLineThreeRow(),
                              SizedBox(height: 15.v),
                              _buildLoginWithGoogleButton(),
                              SizedBox(height: 34.v),
                              _buildNotAMemberHorizontalScroll(),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 374.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(29.h, 14.v, 319.h, 15.v),
            onTap: () {
              onTapVector();
            }));
  }

  /// Section Widget
  Widget _buildEmailFloatingTextField() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: CustomFloatingTextField(
            controller: controller.emailFloatingTextFieldController,
            labelText: "lbl_email_address".tr,
            labelStyle: TextStyle(
                color: appTheme.gray800,
                fontSize: 13.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w300),
            hintText: "lbl_email_address".tr,
            textInputType: TextInputType.emailAddress,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildPasswordFloatingTextField() {
    return Obx(() => CustomFloatingTextField(
        width: 325.h,
        controller: controller.passwordFloatingTextFieldController,
        labelText: "lbl_password".tr,
        labelStyle: TextStyle(
            color: theme.colorScheme.primaryContainer,
            fontSize: 13.fSize,
            fontFamily: 'Urbane',
            fontWeight: FontWeight.w300),
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: controller.isShowPassword.value,
        alignment: Alignment.bottomCenter,
        suffix: InkWell(
            onTap: () {
              controller.isShowPassword.value =
                  !controller.isShowPassword.value;
            },
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 11.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgEditHide,
                    height: 18.adaptSize,
                    width: 18.adaptSize))),
        suffixConstraints: BoxConstraints(maxHeight: 68.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.fromLTRB(17.h, -7.v, 17.h, 51.v)));
  }

  /// Section Widget
  Widget _buildPasswordStack() {
    return SizedBox(
        height: 81.v,
        width: 325.h,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 1.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                            height: 11.adaptSize,
                            width: 11.adaptSize,
                            margin: EdgeInsets.only(bottom: 4.v),
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
                                    fontSize: 13.fSize,
                                    fontFamily: 'Urbane',
                                    fontWeight: FontWeight.w300)))
                      ]))),
          _buildPasswordFloatingTextField()
        ]));
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomOutlinedButton(
        text: "lbl_login".tr,
        margin: EdgeInsets.only(left: 26.h, right: 25.h),
        buttonStyle: CustomButtonStyles.outlinePrimary);
  }

  /// Section Widget
  Widget _buildLineThreeRow() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
                  child: SizedBox(width: 148.h, child: Divider())),
              Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text("lbl_or".tr,
                      style: TextStyle(
                          color: appTheme.gray80001,
                          fontSize: 14.fSize,
                          fontFamily: 'Urbane',
                          fontWeight: FontWeight.w500))),
              Padding(
                  padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
                  child: SizedBox(width: 154.h, child: Divider(indent: 6.h)))
            ]));
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton() {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        margin: EdgeInsets.only(left: 26.h, right: 24.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleicons095121,
                height: 50.adaptSize,
                width: 50.adaptSize)));
  }

  /// Section Widget
  Widget _buildNotAMemberHorizontalScroll() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
            child: Row(children: [
          Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text("lbl_not_a_member".tr,
                  style: TextStyle(
                      color: appTheme.gray80001,
                      fontSize: 14.fSize,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.w700))),
          Padding(
              padding: EdgeInsets.only(left: 4.h, bottom: 2.v),
              child: Text("lbl_join_now".tr,
                  style: TextStyle(
                      color: theme.colorScheme.primary,
                      fontSize: 14.fSize,
                      fontFamily: 'Oxygen',
                      fontWeight: FontWeight.w700))),
          Spacer(flex: 71),
          SizedBox(
              width: 170.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text("lbl_not_a_member".tr,
                            style: TextStyle(
                                color: appTheme.gray80001,
                                fontSize: 14.fSize,
                                fontFamily: 'Oxygen',
                                fontWeight: FontWeight.w700))),
                    GestureDetector(
                        onTap: () {
                          onTapTxtJoinNow();
                        },
                        child: Text("lbl_join_now".tr,
                            style: TextStyle(
                                color: theme.colorScheme.primary,
                                fontSize: 14.fSize,
                                fontFamily: 'Oxygen',
                                fontWeight: FontWeight.w700,
                                decoration: TextDecoration.underline)))
                  ])),
          Spacer(flex: 28)
        ])));
  }

  /// Navigates to the previous screen.
  onTapVector() {
    Get.back();
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtJoinNow() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}
