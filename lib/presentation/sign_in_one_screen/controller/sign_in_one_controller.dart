import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/sign_in_one_screen/models/sign_in_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SignInOneScreen.
///
/// This class manages the state of the SignInOneScreen, including the
/// current signInOneModelObj
class SignInOneController extends GetxController {
  TextEditingController emailFloatingTextFieldController =
      TextEditingController();

  TextEditingController passwordEditTextController = TextEditingController();

  Rx<SignInOneModel> signInOneModelObj = SignInOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailFloatingTextFieldController.dispose();
    passwordEditTextController.dispose();
  }
}
