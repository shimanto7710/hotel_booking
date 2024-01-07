import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/page_three_screen/models/page_three_model.dart';

/// A controller class for the PageThreeScreen.
///
/// This class manages the state of the PageThreeScreen, including the
/// current pageThreeModelObj
class PageThreeController extends GetxController {
  Rx<PageThreeModel> pageThreeModelObj = PageThreeModel().obs;
}
