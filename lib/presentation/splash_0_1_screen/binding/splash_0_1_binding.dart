import '../controller/splash_0_1_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Splash01Screen.
///
/// This class ensures that the Splash01Controller is created when the
/// Splash01Screen is first loaded.
class Splash01Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Splash01Controller());
  }
}
