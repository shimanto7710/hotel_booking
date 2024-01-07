import 'controller/sign_in_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/core/utils/validation_functions.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:shimanto_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:shimanto_s_application1/widgets/custom_floating_text_field.dart';
import 'package:shimanto_s_application1/widgets/custom_outlined_button.dart';
import 'package:shimanto_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignInOneScreen extends GetWidget<SignInOneController> {
  SignInOneScreen({Key? key}) : super(key: key);

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
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(horizontal: 24.h),
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
                                  child: Text("lbl_login2".tr,
                                      style: TextStyle(
                                          color: appTheme.gray800,
                                          fontSize: 20.fSize,
                                          fontFamily: 'Urbane',
                                          fontWeight: FontWeight.w600))),
                              SizedBox(height: 30.v),
                              _buildEmailFloatingTextField(),
                              SizedBox(height: 30.v),
                              _buildPassword(),
                              SizedBox(height: 31.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_forget_passward".tr,
                                      style: TextStyle(
                                          color: appTheme.gray80001,
                                          fontSize: 14.fSize,
                                          fontFamily: 'Oxygen',
                                          fontWeight: FontWeight.w700))),
                              SizedBox(height: 33.v),
                              _buildLoginButton(),
                              SizedBox(height: 13.v),
                              _buildLineThreeRow(),
                              SizedBox(height: 15.v),
                              _buildLoginWithGoogleButton(),
                              SizedBox(height: 34.v),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 3.h),
                                            child: Text("lbl_join_now".tr,
                                                style: TextStyle(
                                                    color: theme
                                                        .colorScheme.primary,
                                                    fontSize: 14.fSize,
                                                    fontFamily: 'Oxygen',
                                                    fontWeight: FontWeight.w700,
                                                    decoration: TextDecoration
                                                        .underline))))
                                  ]),
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
    return CustomFloatingTextField(
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
        });
  }

  /// Section Widget
  Widget _buildPasswordEditText() {
    return CustomTextFormField(
        width: 325.h,
        controller: controller.passwordEditTextController,
        hintText: "lbl_password".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        alignment: Alignment.center,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 22.v));
  }

  /// Section Widget
  Widget _buildPassword() {
    return SizedBox(
        height: 60.v,
        width: 325.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.h, vertical: 20.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 18.v,
                            width: 65.h,
                            margin: EdgeInsets.only(bottom: 1.v),
                            decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1))),
                        CustomImageView(
                            imagePath: ImageConstant.imgEditHide,
                            height: 18.adaptSize,
                            width: 18.adaptSize)
                      ]))),
          _buildPasswordEditText()
        ]));
  }

  /// Section Widget
  Widget _buildLoginButton() {
    return CustomOutlinedButton(
        text: "lbl_login".tr, buttonStyle: CustomButtonStyles.outlinePrimary);
  }

  /// Section Widget
  Widget _buildLineThreeRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
              child: SizedBox(width: 148.h, child: Divider())),
          Text("lbl_or".tr,
              style: TextStyle(
                  color: appTheme.gray80001,
                  fontSize: 14.fSize,
                  fontFamily: 'Urbane',
                  fontWeight: FontWeight.w500)),
          Padding(
              padding: EdgeInsets.only(top: 9.v, bottom: 7.v),
              child: SizedBox(width: 148.h, child: Divider()))
        ]);
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton() {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleicons095121,
                height: 50.adaptSize,
                width: 50.adaptSize)));
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
