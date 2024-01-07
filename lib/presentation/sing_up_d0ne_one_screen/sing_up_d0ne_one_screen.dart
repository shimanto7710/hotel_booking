import 'controller/sing_up_d0ne_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/core/utils/validation_functions.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:shimanto_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_outlined_button.dart';
import 'package:shimanto_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SingUpD0neOneScreen extends GetWidget<SingUpD0neOneController> {
  SingUpD0neOneScreen({Key? key}) : super(key: key);

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
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.h, vertical: 1.v),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("lbl_signup2".tr,
                                          style: TextStyle(
                                              color: appTheme.gray800,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w600))),
                                  SizedBox(height: 31.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("lbl_user_name".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 10.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w300))),
                                  SizedBox(height: 13.v),
                                  _buildUserNameEditText(),
                                  SizedBox(height: 39.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("lbl_email_address".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 10.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w300))),
                                  SizedBox(height: 14.v),
                                  _buildEmailEditText(),
                                  SizedBox(height: 39.v),
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text("lbl_password".tr,
                                          style: TextStyle(
                                              color: appTheme.gray80001,
                                              fontSize: 10.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w300))),
                                  SizedBox(height: 15.v),
                                  _buildPasswordEditText(),
                                  SizedBox(height: 35.v),
                                  _buildSignUpStack(),
                                  SizedBox(height: 23.v),
                                  _buildLineFiveRow(),
                                  SizedBox(height: 12.v),
                                  _buildLoginWithGoogleButton(),
                                  SizedBox(height: 28.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Padding(
                                          padding: EdgeInsets.only(right: 71.h),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        bottom: 1.v),
                                                    child: Text(
                                                        "msg_have_an_account"
                                                            .tr,
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
                                                        left: 5.h),
                                                    child: Text(
                                                        "lbl_log_in2".tr,
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
                                  SizedBox(height: 43.v),
                                  SizedBox(
                                      width: 153.h,
                                      child: Divider(color: appTheme.gray800))
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 49.v,
        leadingWidth: 374.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(25.h, 17.v, 323.h, 17.v),
            onTap: () {
              onTapVector();
            }));
  }

  /// Section Widget
  Widget _buildUserNameEditText() {
    return CustomTextFormField(
        controller: controller.userNameEditTextController,
        hintText: "msg_mr_banner_sharma2".tr);
  }

  /// Section Widget
  Widget _buildEmailEditText() {
    return CustomTextFormField(
        controller: controller.emailEditTextController,
        hintText: "msg_banneroo_d_gmail_com".tr,
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
    return Obx(() => CustomTextFormField(
        controller: controller.passwordEditTextController,
        hintText: "lbl_brohulk".tr,
        textInputAction: TextInputAction.done,
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
                    width: 15.h))),
        suffixConstraints: BoxConstraints(maxHeight: 25.v),
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: controller.isShowPassword.value));
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
        width: 324.h, text: "lbl_sign_up".tr, alignment: Alignment.center);
  }

  /// Section Widget
  Widget _buildSignUpStack() {
    return SizedBox(
        height: 60.v,
        width: 324.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Text("lbl_countune".tr,
                  style: TextStyle(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      fontSize: 14.fSize,
                      fontFamily: 'Urbane',
                      fontWeight: FontWeight.w500))),
          _buildSignUp()
        ]));
  }

  /// Section Widget
  Widget _buildLineFiveRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
              child: SizedBox(width: 148.h, child: Divider())),
          Text("lbl_or".tr,
              style: TextStyle(
                  color: appTheme.gray80001,
                  fontSize: 16.fSize,
                  fontFamily: 'Oxygen',
                  fontWeight: FontWeight.w700)),
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
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
                width: 50.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineGrayTL6);
  }

  /// Navigates to the previous screen.
  onTapVector() {
    Get.back();
  }
}
