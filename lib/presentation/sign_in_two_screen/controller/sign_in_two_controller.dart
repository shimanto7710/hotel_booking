import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/sign_in_two_screen/models/sign_in_two_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInTwoScreen.
///
/// This class manages the state of the SignInTwoScreen, including the
/// current signInTwoModelObj
class SignInTwoController extends GetxController {
  TextEditingController emailFloatingTextFieldController =
      TextEditingController();

  TextEditingController passwordFloatingTextFieldController =
      TextEditingController();

  Rx<SignInTwoModel> signInTwoModelObj = SignInTwoModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailFloatingTextFieldController.dispose();
    passwordFloatingTextFieldController.dispose();
  }
}
