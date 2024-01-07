import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/sign_in_two_one_screen/models/sign_in_two_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInTwoOneScreen.
///
/// This class manages the state of the SignInTwoOneScreen, including the
/// current signInTwoOneModelObj
class SignInTwoOneController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignInTwoOneModel> signInTwoOneModelObj = SignInTwoOneModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
