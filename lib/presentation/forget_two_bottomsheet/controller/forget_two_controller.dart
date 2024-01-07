import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/forget_two_bottomsheet/models/forget_two_model.dart';

/// A controller class for the ForgetTwoBottomsheet.
///
/// This class manages the state of the ForgetTwoBottomsheet, including the
/// current forgetTwoModelObj
class ForgetTwoController extends GetxController {
  Rx<ForgetTwoModel> forgetTwoModelObj = ForgetTwoModel().obs;
}
