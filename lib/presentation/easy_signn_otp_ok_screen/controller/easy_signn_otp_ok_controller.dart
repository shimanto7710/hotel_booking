import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/easy_signn_otp_ok_screen/models/easy_signn_otp_ok_model.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:flutter/material.dart';

/// A controller class for the EasySignnOtpOkScreen.
///
/// This class manages the state of the EasySignnOtpOkScreen, including the
/// current easySignnOtpOkModelObj
class EasySignnOtpOkController extends GetxController with CodeAutoFill {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<EasySignnOtpOkModel> easySignnOtpOkModelObj = EasySignnOtpOkModel().obs;

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
