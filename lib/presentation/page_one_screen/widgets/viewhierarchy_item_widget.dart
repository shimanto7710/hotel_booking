import '../controller/page_one_controller.dart';
import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  var controller = Get.find<PageOneController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 152.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 113.v,
            width: 152.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: viewhierarchyItemModelObj.rating!.value,
                    height: 113.v,
                    width: 152.h,
                    radius: BorderRadius.circular(
                      6.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 28.h,
                    margin: EdgeInsets.only(
                      top: 8.v,
                      right: 11.h,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder5,
                    ),
                    child: Obx(
                      () => Text(
                        viewhierarchyItemModelObj.ratingText!.value,
                        style: TextStyle(
                          color:
                              theme.colorScheme.errorContainer.withOpacity(1),
                          fontSize: 9.fSize,
                          fontFamily: 'Urbane',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Row(
            children: [
              Obx(
                () => Text(
                  viewhierarchyItemModelObj.resortName!.value,
                  style: TextStyle(
                    color: theme.colorScheme.errorContainer.withOpacity(1),
                    fontSize: 10.fSize,
                    fontFamily: 'Urbane',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath: viewhierarchyItemModelObj.favoriteImage!.value,
                  height: 8.v,
                  width: 11.h,
                  margin: EdgeInsets.only(
                    left: 32.h,
                    top: 2.v,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 1.v),
          Obx(
            () => Text(
              viewhierarchyItemModelObj.description!.value,
              style: TextStyle(
                color: appTheme.gray80001,
                fontSize: 9.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Obx(
            () => Text(
              viewhierarchyItemModelObj.roomType!.value,
              style: TextStyle(
                color: appTheme.gray80001,
                fontSize: 9.fSize,
                fontFamily: 'Urbane',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(height: 3.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_5000tk".tr,
                  style: theme.textTheme.labelSmall,
                ),
                TextSpan(
                  text: "lbl_night".tr,
                  style: CustomTextStyles.bodySmallErrorContainer_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
