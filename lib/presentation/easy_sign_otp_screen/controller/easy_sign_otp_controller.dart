import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/easy_sign_otp_screen/models/easy_sign_otp_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the EasySignOtpScreen.
///
/// This class manages the state of the EasySignOtpScreen, including the
/// current easySignOtpModelObj
class EasySignOtpController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<EasySignOtpModel> easySignOtpModelObj = EasySignOtpModel().obs;

  @override
  void codeUpdated() {
    otpController.value.text = code ?? '';
  }

  @override
  void onInit() {
    super.onInit();
    listenForCode();
  }
}
