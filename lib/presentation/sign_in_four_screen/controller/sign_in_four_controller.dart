import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/sign_in_four_screen/models/sign_in_four_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInFourScreen.
///
/// This class manages the state of the SignInFourScreen, including the
/// current signInFourModelObj
class SignInFourController extends GetxController {
  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  Rx<SignInFourModel> signInFourModelObj = SignInFourModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailFieldController.dispose();
    passwordFieldController.dispose();
  }
}
