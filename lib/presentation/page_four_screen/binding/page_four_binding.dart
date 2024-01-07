import '../controller/page_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PageFourScreen.
///
/// This class ensures that the PageFourController is created when the
/// PageFourScreen is first loaded.
class PageFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageFourController());
  }
}
