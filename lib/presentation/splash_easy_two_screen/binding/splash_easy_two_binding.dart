import '../controller/splash_easy_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SplashEasyTwoScreen.
///
/// This class ensures that the SplashEasyTwoController is created when the
/// SplashEasyTwoScreen is first loaded.
class SplashEasyTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashEasyTwoController());
  }
}
