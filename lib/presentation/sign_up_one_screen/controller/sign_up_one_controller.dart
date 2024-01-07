import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/sign_up_one_screen/models/sign_up_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignUpOneScreen.
///
/// This class manages the state of the SignUpOneScreen, including the
/// current signUpOneModelObj
class SignUpOneController extends GetxController {
  TextEditingController userNameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<SignUpOneModel> signUpOneModelObj = SignUpOneModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    userNameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
}
