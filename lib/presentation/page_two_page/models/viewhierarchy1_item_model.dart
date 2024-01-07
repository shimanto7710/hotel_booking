import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
    this.ratingImage,
    this.ratingText,
    this.resortName,
    this.favoriteImage,
    this.resortDescription,
    this.roomType,
    this.id,
  }) {
    ratingImage = ratingImage ?? Rx(ImageConstant.imgRectangle43);
    ratingText = ratingText ?? Rx("4.9");
    resortName = resortName ?? Rx("Rio resort , CoxBazar");
    favoriteImage = favoriteImage ?? Rx(ImageConstant.imgFavorite);
    resortDescription = resortDescription ?? Rx("Beach side resort, Coxbazar");
    roomType = roomType ?? Rx("Studio  1 Bed  1 Bath");
    id = id ?? Rx("");
  }

  Rx<String>? ratingImage;

  Rx<String>? ratingText;

  Rx<String>? resortName;

  Rx<String>? favoriteImage;

  Rx<String>? resortDescription;

  Rx<String>? roomType;

  Rx<String>? id;
}
