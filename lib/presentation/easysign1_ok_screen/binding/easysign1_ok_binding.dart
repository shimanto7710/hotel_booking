import '../controller/easysign1_ok_controller.dart';
import 'package:get/get.dart';

/// A binding class for the Easysign1OkScreen.
///
/// This class ensures that the Easysign1OkController is created when the
/// Easysign1OkScreen is first loaded.
class Easysign1OkBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Easysign1OkController());
  }
}
