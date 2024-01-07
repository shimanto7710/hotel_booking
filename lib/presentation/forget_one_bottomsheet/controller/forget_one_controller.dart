import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/forget_one_bottomsheet/models/forget_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForgetOneBottomsheet.
///
/// This class manages the state of the ForgetOneBottomsheet, including the
/// current forgetOneModelObj
class ForgetOneController extends GetxController {
  TextEditingController emailController = TextEditingController();

  Rx<ForgetOneModel> forgetOneModelObj = ForgetOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
  }
}
