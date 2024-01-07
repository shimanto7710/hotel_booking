import '../controller/page_two_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the PageTwoContainerScreen.
///
/// This class ensures that the PageTwoContainerController is created when the
/// PageTwoContainerScreen is first loaded.
class PageTwoContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PageTwoContainerController());
  }
}
