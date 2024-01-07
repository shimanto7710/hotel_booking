import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [page_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PageOneModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        userImage: ImageConstant.imgRectangle26.obs,
        titleText: "Be our Guest".obs,
        descriptionText: "Loram ipsam questo rada lastica".obs)
  ]);

  Rx<List<ViewhierarchyItemModel>> viewhierarchyItemList = Rx([
    ViewhierarchyItemModel(
        rating: ImageConstant.imgRectangle43.obs,
        ratingText: "4.9".obs,
        resortName: "Rio resort , CoxBazar".obs,
        favoriteImage: ImageConstant.imgFavorite.obs,
        description: "Beach side resort, Coxbazar".obs,
        roomType: "Studio  1 Bed  1 Bath".obs),
    ViewhierarchyItemModel(
        rating: ImageConstant.imgRectangle44.obs,
        ratingText: "4.9".obs,
        resortName: "Rio resort , CoxBazar".obs,
        favoriteImage: ImageConstant.imgFavoritePrimary.obs,
        description: "Beach side resort, Coxbazar".obs,
        roomType: "Studio  1 Bed  1 Bath".obs)
  ]);
}
