import 'controller/splash_0_1_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/custom_switch.dart';
import 'package:shimanto_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class Splash01Screen extends GetWidget<Splash01Controller> {
  const Splash01Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 769.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 716.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 115.h,
                              right: 112.h,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup7,
                                  height: 67.v,
                                  width: 148.h,
                                ),
                                SizedBox(height: 65.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup7,
                                  height: 65.v,
                                  width: 143.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 85.v),
                            child: SizedBox(
                              width: 153.h,
                              child: Divider(
                                color: appTheme.gray800,
                              ),
                            ),
                          ),
                        ),
                        _buildSplashScreen(),
                      ],
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUnsplashEztqreo1cag,
                height: 769.v,
                width: 375.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSplashScreen() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 25.h,
          vertical: 45.v,
        ),
        decoration: AppDecoration.outlineErrorContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "msg_easy_login_with".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                fontSize: 21.fSize,
                fontFamily: 'Gilroy-Medium',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 8.v),
            Text(
              "msg_verify_your_account".tr,
              style: TextStyle(
                color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                fontSize: 13.fSize,
                fontFamily: 'Gilroy-Regular',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 33.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      width: 65.h,
                      margin: EdgeInsets.only(left: 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Obx(
                            () => CustomSwitch(
                              value: controller.isSelectedSwitch.value,
                              onChange: (value) {
                                controller.isSelectedSwitch.value = value;
                              },
                            ),
                          ),
                          Text(
                            "lbl_880".tr,
                            style: TextStyle(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              fontSize: 15.fSize,
                              fontFamily: 'Gilroy-Regular',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Container(
                      height: 1.v,
                      width: 66.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 9.h),
                    child: CustomTextFormField(
                      controller: controller.zipcodeController,
                      hintText: "lbl_166960".tr,
                      textInputAction: TextInputAction.done,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 33.v),
          ],
        ),
      ),
    );
  }
}
