import 'controller/easy_signn_otp_ok_controller.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/custom_elevated_button.dart';
import 'package:shimanto_s_application1/widgets/custom_pin_code_text_field.dart';

// ignore_for_file: must_be_immutable
class EasySignnOtpOkScreen extends GetWidget<EasySignnOtpOkController> {
  const EasySignnOtpOkScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              decoration: AppDecoration.fillBlueGray,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 30.v,
                ),
                decoration: AppDecoration.outlineErrorContainer1.copyWith(
                  borderRadius: BorderRadiusStyle.customBorderTL12,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 18.v,
                      width: 24.h,
                      margin: EdgeInsets.only(left: 1.h),
                    ),
                    SizedBox(height: 36.v),
                    Padding(
                      padding: EdgeInsets.only(left: 1.h),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_we_have_sent_sms2".tr,
                              style: CustomTextStyles.titleLargeGilroyRegular,
                            ),
                            TextSpan(
                              text: " ".tr,
                              style: CustomTextStyles.titleLargeGilroyMedium,
                            ),
                            TextSpan(
                              text: "lbl_881676_68".tr,
                              style: CustomTextStyles
                                  .titleLargeGilroyMediumPrimary,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(height: 19.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 1.h,
                        right: 36.h,
                      ),
                      child: Obx(
                        () => CustomPinCodeTextField(
                          context: Get.context!,
                          controller: controller.otpController.value,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                    SizedBox(height: 28.v),
                    _buildNinetySix(),
                    SizedBox(height: 421.v),
                    CustomElevatedButton(
                      height: 56.v,
                      text: "lbl_verify".tr,
                      margin: EdgeInsets.only(left: 1.h),
                      buttonStyle: CustomButtonStyles.fillDeepOrange,
                    ),
                    SizedBox(height: 10.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNinetySix() {
    return Padding(
      padding: EdgeInsets.only(
        left: 1.h,
        right: 6.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_resend_otp".tr,
            style: TextStyle(
              color: appTheme.gray80001,
              fontSize: 13.fSize,
              fontFamily: 'Gilroy-SemiBold',
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            "lbl_edit_number".tr,
            style: TextStyle(
              color: appTheme.gray80001,
              fontSize: 12.fSize,
              fontFamily: 'Gilroy-Medium',
              fontWeight: FontWeight.w400,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
