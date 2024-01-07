import '../controller/sign_in_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInFourScreen.
///
/// This class ensures that the SignInFourController is created when the
/// SignInFourScreen is first loaded.
class SignInFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInFourController());
  }
}
