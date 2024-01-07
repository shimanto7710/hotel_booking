import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/page_two_container_screen/models/page_two_container_model.dart';

/// A controller class for the PageTwoContainerScreen.
///
/// This class manages the state of the PageTwoContainerScreen, including the
/// current pageTwoContainerModelObj
class PageTwoContainerController extends GetxController {
  Rx<PageTwoContainerModel> pageTwoContainerModelObj =
      PageTwoContainerModel().obs;
}
