import '../controller/page_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PageThreeScreen.
///
/// This class ensures that the PageThreeController is created when the
/// PageThreeScreen is first loaded.
class PageThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageThreeController());
  }
}
