import 'controller/easysign1_ok_controller.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:shimanto_s_application1/widgets/custom_checkbox_button.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_phone_number.dart';

// ignore_for_file: must_be_immutable
class Easysign1OkScreen extends GetWidget<Easysign1OkController> {
  Easysign1OkScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: Container(
                            decoration: AppDecoration.fillBlueGray,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.h, vertical: 1.v),
                                decoration: AppDecoration.outlineErrorContainer1
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL12),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(height: 26.v),
                                      _buildLoginForm(),
                                      SizedBox(height: 191.v),
                                      _buildKeyBackground(),
                                      SizedBox(height: 23.v),
                                      SizedBox(
                                          width: 153.h,
                                          child:
                                              Divider(color: appTheme.gray800))
                                    ]))))))));
  }

  /// Section Widget
  Widget _buildLoginForm() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Column(children: [
          CustomAppBar(
              height: 18.v,
              leadingWidth: double.maxFinite,
              leading: Container(
                  height: 18.v,
                  width: 24.h,
                  margin: EdgeInsets.only(left: 26.h, right: 325.h),
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorErrorcontainer,
                        height: 1.v,
                        width: 24.h,
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(top: 9.v, bottom: 8.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgVectorErrorcontainer18x9,
                        height: 18.v,
                        width: 9.h,
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(right: 15.h),
                        onTap: () {
                          onTapImgVector();
                        })
                  ]))),
          SizedBox(height: 39.v),
          Text("msg_easy_login_with".tr,
              style: TextStyle(
                  color: appTheme.gray800,
                  fontSize: 21.fSize,
                  fontFamily: 'Gilroy-Medium',
                  fontWeight: FontWeight.w400)),
          SizedBox(height: 7.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("msg_verify_your_account".tr,
                      style: TextStyle(
                          color: appTheme.gray80001,
                          fontSize: 13.fSize,
                          fontFamily: 'Gilroy-Regular',
                          fontWeight: FontWeight.w400)))),
          SizedBox(height: 34.v),
          Padding(
              padding: EdgeInsets.only(left: 19.h, right: 22.h),
              child: Obx(() => CustomPhoneNumber(
                  country: controller.selectedCountry.value,
                  controller: controller.phoneNumberController,
                  onTap: (Country value) {
                    controller.selectedCountry.value = value;
                  }))),
          SizedBox(height: 26.v),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 20.h, right: 58.h),
                  child: Obx(() => CustomCheckboxButton(
                      alignment: Alignment.centerLeft,
                      text: "msg_i_agree_with_terms".tr,
                      value: controller.teenyiconstickcirclesolid.value,
                      textStyle: TextStyle(
                          color: appTheme.gray80001,
                          fontSize: 13.fSize,
                          fontFamily: 'Gilroy-Regular',
                          fontWeight: FontWeight.w400),
                      onChange: (value) {
                        controller.teenyiconstickcirclesolid.value = value;
                      })))),
          SizedBox(height: 188.v),
          CustomElevatedButton(
              height: 56.v,
              text: "lbl_verify_me".tr,
              margin: EdgeInsets.symmetric(horizontal: 20.h),
              buttonStyle: CustomButtonStyles.fillDeepOrange)
        ]));
  }

  /// Section Widget
  Widget _buildKeyBackground() {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 46.v,
              width: 117.h,
              decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(5.h),
                  boxShadow: [
                    BoxShadow(
                        color: appTheme.blueGray400,
                        spreadRadius: 2.h,
                        blurRadius: 2.h,
                        offset: Offset(0, 1))
                  ])),
          Container(
              height: 46.v,
              width: 117.h,
              padding: EdgeInsets.symmetric(horizontal: 46.h, vertical: 14.v),
              decoration: AppDecoration.outlineBlueGray
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
              child: CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 16.v,
                  width: 22.h,
                  alignment: Alignment.bottomLeft))
        ]));
  }

  /// Navigates to the previous screen.
  onTapImgVector() {
    Get.back();
  }
}
