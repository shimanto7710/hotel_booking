import '../controller/sign_in_two_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInTwoOneScreen.
///
/// This class ensures that the SignInTwoOneController is created when the
/// SignInTwoOneScreen is first loaded.
class SignInTwoOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInTwoOneController());
  }
}
