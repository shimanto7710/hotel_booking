import '../controller/sign_in_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SignInThreeScreen.
///
/// This class ensures that the SignInThreeController is created when the
/// SignInThreeScreen is first loaded.
class SignInThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInThreeController());
  }
}
