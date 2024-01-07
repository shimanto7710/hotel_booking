import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/sign_in_three_screen/models/sign_in_three_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInThreeScreen.
///
/// This class manages the state of the SignInThreeScreen, including the
/// current signInThreeModelObj
class SignInThreeController extends GetxController {
  TextEditingController emailFloatingTextFieldController =
      TextEditingController();

  TextEditingController passwordFloatingTextFieldController =
      TextEditingController();

  Rx<SignInThreeModel> signInThreeModelObj = SignInThreeModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailFloatingTextFieldController.dispose();
    passwordFloatingTextFieldController.dispose();
  }
}
