import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/page_four_screen/models/page_four_model.dart';

/// A controller class for the PageFourScreen.
///
/// This class manages the state of the PageFourScreen, including the
/// current pageFourModelObj
class PageFourController extends GetxController {
  Rx<PageFourModel> pageFourModelObj = PageFourModel().obs;
}
