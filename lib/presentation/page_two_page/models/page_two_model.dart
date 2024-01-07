import '../../../core/app_export.dart';
import 'userprofile1_item_model.dart';
import 'viewhierarchy1_item_model.dart';
import 'resortcomponent_item_model.dart';

/// This class defines the variables used in the [page_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PageTwoModel {
  Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([
    Userprofile1ItemModel(
        userImage: ImageConstant.imgRectangle26.obs,
        titleText: "Be our Guest".obs,
        descriptionText: "Loram ipsam questo rada lastica".obs)
  ]);

  Rx<List<Viewhierarchy1ItemModel>> viewhierarchy1ItemList = Rx([
    Viewhierarchy1ItemModel(
        ratingImage: ImageConstant.imgRectangle43.obs,
        ratingText: "4.9".obs,
        resortName: "Rio resort , CoxBazar".obs,
        favoriteImage: ImageConstant.imgFavorite.obs,
        resortDescription: "Beach side resort, Coxbazar".obs,
        roomType: "Studio  1 Bed  1 Bath".obs),
    Viewhierarchy1ItemModel(
        ratingImage: ImageConstant.imgRectangle44.obs,
        ratingText: "4.9".obs,
        resortName: "Rio resort , CoxBazar".obs,
        favoriteImage: ImageConstant.imgFavoritePrimary.obs,
        resortDescription: "Beach side resort, Coxbazar".obs,
        roomType: "Studio  1 Bed  1 Bath".obs)
  ]);

  Rx<List<ResortcomponentItemModel>> resortcomponentItemList = Rx([
    ResortcomponentItemModel(
        resortName: "Bhai Bhai resort ,CoxBazar".obs,
        resortImage: ImageConstant.imgFavoritePrimary.obs,
        resortDescription: "Beach side resort, Coxbazar".obs,
        roomType: "Studio  1 Bed  1 Bath".obs),
    ResortcomponentItemModel(
        resortName: "saimon Hotel , CoxBazar".obs,
        resortImage: ImageConstant.imgFavoritePrimary.obs,
        resortDescription: "Beach side resort, Coxbazar".obs,
        roomType: "Studio  1 Bed  1 Bath".obs)
  ]);
}
