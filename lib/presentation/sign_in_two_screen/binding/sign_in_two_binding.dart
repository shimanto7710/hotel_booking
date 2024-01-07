import '../controller/sign_in_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInTwoScreen.
///
/// This class ensures that the SignInTwoController is created when the
/// SignInTwoScreen is first loaded.
class SignInTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInTwoController());
  }
}
