import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/core/utils/validation_functions.dart';
import 'package:shimanto_s_application1/widgets/custom_floating_text_field.dart';
import 'package:shimanto_s_application1/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

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
                                horizontal: 22.h, vertical: 7.v),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgArrowLeft,
                                            height: 35.adaptSize,
                                            width: 35.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 51.v),
                                            onTap: () {
                                              onTapImgArrowLeft();
                                            }),
                                        Padding(
                                            padding: EdgeInsets.only(
                                                left: 77.h, top: 29.v),
                                            child: Column(children: [
                                              Text("lbl_flogo".tr,
                                                  style: TextStyle(
                                                      color: appTheme.gray800,
                                                      fontSize: 35.fSize,
                                                      fontFamily: 'Oxygen',
                                                      fontWeight:
                                                          FontWeight.w700)),
                                              Text("lbl_here".tr,
                                                  style: TextStyle(
                                                      color: appTheme.gray800,
                                                      fontSize: 15.fSize,
                                                      fontFamily: 'Jura',
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ]))
                                      ])),
                              SizedBox(height: 29.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text("lbl_signup2".tr,
                                          style: TextStyle(
                                              color: appTheme.gray800,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Urbane',
                                              fontWeight: FontWeight.w600)))),
                              SizedBox(height: 21.v),
                              _buildUserName(),
                              SizedBox(height: 27.v),
                              _buildEmail(),
                              SizedBox(height: 27.v),
                              _buildPassword(),
                              SizedBox(height: 44.v),
                              _buildCountune(),
                              SizedBox(height: 20.v),
                              _buildLineFive(),
                              SizedBox(height: 15.v),
                              _buildLoginWithGoogle(),
                              SizedBox(height: 28.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 73.h),
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
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLogIn();
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5.h),
                                                child: Text("lbl_log_in2".tr,
                                                    style: TextStyle(
                                                        color: theme.colorScheme
                                                            .primary,
                                                        fontSize: 14.fSize,
                                                        fontFamily: 'Oxygen',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        decoration:
                                                            TextDecoration
                                                                .underline))))
                                      ]))),
                              SizedBox(height: 5.v)
                            ])))))));
  }

  /// Section Widget
  Widget _buildUserName() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomFloatingTextField(
            controller: controller.userNameController,
            labelText: "lbl_user_name".tr,
            labelStyle: TextStyle(
                color: appTheme.gray80001,
                fontSize: 13.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w300),
            hintText: "lbl_user_name".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            }));
  }

  /// Section Widget
  Widget _buildEmail() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: CustomFloatingTextField(
            controller: controller.emailController,
            labelText: "lbl_email_address".tr,
            labelStyle: TextStyle(
                color: appTheme.gray80001,
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
            },
            contentPadding: EdgeInsets.fromLTRB(21.h, 23.v, 21.h, 20.v)));
  }

  /// Section Widget
  Widget _buildPassword() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Obx(() => CustomFloatingTextField(
            controller: controller.passwordController,
            labelText: "lbl_password".tr,
            labelStyle: TextStyle(
                color: appTheme.gray80001,
                fontSize: 13.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w300),
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            obscureText: controller.isShowPassword.value,
            suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgSearch,
                        height: 10.v,
                        width: 15.h))),
            suffixConstraints: BoxConstraints(maxHeight: 69.v),
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.fromLTRB(21.h, 23.v, 21.h, 20.v))));
  }

  /// Section Widget
  Widget _buildCountune() {
    return CustomOutlinedButton(
        text: "lbl_countune".tr,
        margin: EdgeInsets.symmetric(horizontal: 3.h),
        buttonStyle: CustomButtonStyles.outlinePrimary,
        onPressed: () {
          onTapCountune();
        });
  }

  /// Section Widget
  Widget _buildLineFive() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Row(
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
            ]));
  }

  /// Section Widget
  Widget _buildLoginWithGoogle() {
    return CustomOutlinedButton(
        text: "msg_login_with_google".tr,
        margin: EdgeInsets.only(left: 3.h, right: 2.h),
        leftIcon: Container(
            margin: EdgeInsets.only(right: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgGoogleicons095121,
                height: 50.adaptSize,
                width: 50.adaptSize)));
  }

  /// Navigates to the previous screen.
  onTapImgArrowLeft() {
    Get.back();
  }

  /// Navigates to the singUpD0neScreen when the action is triggered.
  onTapCountune() {
    Get.toNamed(
      AppRoutes.singUpD0neScreen,
    );
  }

  /// Navigates to the signInOneScreen when the action is triggered.
  onTapTxtLogIn() {
    Get.toNamed(
      AppRoutes.signInOneScreen,
    );
  }
}
