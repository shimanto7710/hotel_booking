import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.rating,
    this.ratingText,
    this.resortName,
    this.favoriteImage,
    this.description,
    this.roomType,
    this.id,
  }) {
    rating = rating ?? Rx(ImageConstant.imgRectangle43);
    ratingText = ratingText ?? Rx("4.9");
    resortName = resortName ?? Rx("Rio resort , CoxBazar");
    favoriteImage = favoriteImage ?? Rx(ImageConstant.imgFavorite);
    description = description ?? Rx("Beach side resort, Coxbazar");
    roomType = roomType ?? Rx("Studio  1 Bed  1 Bath");
    id = id ?? Rx("");
  }

  Rx<String>? rating;

  Rx<String>? ratingText;

  Rx<String>? resortName;

  Rx<String>? favoriteImage;

  Rx<String>? description;

  Rx<String>? roomType;

  Rx<String>? id;
}
