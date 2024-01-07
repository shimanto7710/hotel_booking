import '../page_two_page/widgets/resortcomponent_item_widget.dart';
import '../page_two_page/widgets/userprofile1_item_widget.dart';
import '../page_two_page/widgets/viewhierarchy1_item_widget.dart';
import 'controller/page_two_controller.dart';
import 'models/page_two_model.dart';
import 'models/resortcomponent_item_model.dart';
import 'models/userprofile1_item_model.dart';
import 'models/viewhierarchy1_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shimanto_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:shimanto_s_application1/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageTwoPage extends StatelessWidget {
  PageTwoPage({Key? key})
      : super(
          key: key,
        );

  PageTwoController controller = Get.put(PageTwoController(PageTwoModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimaryContainer,
          child: Column(
            children: [
              _buildFiftySix(),
              SizedBox(height: 22.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      right: 6.h,
                    ),
                    child: Column(
                      children: [
                        _buildUserProfile(),
                        SizedBox(height: 7.v),
                        Obx(
                          () => SizedBox(
                            height: 7.v,
                            child: AnimatedSmoothIndicator(
                              activeIndex: controller.sliderIndex.value,
                              count: controller.pageTwoModelObj.value
                                  .userprofile1ItemList.value.length,
                              axisDirection: Axis.horizontal,
                              effect: ScrollingDotsEffect(
                                spacing: 5.96,
                                activeDotColor: theme.colorScheme.primary,
                                dotColor: appTheme.gray300,
                                dotHeight: 7.v,
                                dotWidth: 7.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 18.v),
                        _buildPopulerOnOOHGO(),
                        SizedBox(height: 13.v),
                        _buildFavorite(),
                        SizedBox(height: 9.v),
                        _buildResortComponent(),
                        SizedBox(height: 23.v),
                        _buildLineTwentyOne(),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySix() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            height: 16.v,
            leadingWidth: 44.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 26.h,
                top: 1.v,
                bottom: 4.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgTelevisionErrorcontainer,
                margin: EdgeInsets.symmetric(horizontal: 25.h),
              ),
            ],
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              right: 24.h,
            ),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "lbl_where_to".tr,
            ),
          ),
          SizedBox(height: 12.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(
      () => CarouselSlider.builder(
        options: CarouselOptions(
          height: 302.v,
          initialPage: 0,
          autoPlay: true,
          viewportFraction: 1.0,
          enableInfiniteScroll: false,
          scrollDirection: Axis.horizontal,
          onPageChanged: (
            index,
            reason,
          ) {
            controller.sliderIndex.value = index;
          },
        ),
        itemCount:
            controller.pageTwoModelObj.value.userprofile1ItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          Userprofile1ItemModel model = controller
              .pageTwoModelObj.value.userprofile1ItemList.value[index];
          return Userprofile1ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPopulerOnOOHGO() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 3.h,
              right: 6.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_populer_on_oohgo2".tr,
                  style: TextStyle(
                    color: theme.colorScheme.errorContainer.withOpacity(1),
                    fontSize: 14.fSize,
                    fontFamily: 'Urbane',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  margin: EdgeInsets.only(bottom: 2.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgShare,
                  height: 14.v,
                  width: 17.h,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          SizedBox(
            height: 174.v,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.only(left: 2.h),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 21.h,
                  );
                },
                itemCount: controller
                    .pageTwoModelObj.value.viewhierarchy1ItemList.value.length,
                itemBuilder: (context, index) {
                  Viewhierarchy1ItemModel model = controller.pageTwoModelObj
                      .value.viewhierarchy1ItemList.value[index];
                  return Viewhierarchy1ItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFavorite() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle43113x152,
            height: 113.v,
            width: 152.h,
            radius: BorderRadius.circular(
              6.h,
            ),
          ),
          SizedBox(
            height: 113.v,
            width: 152.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle44113x152,
                  height: 113.v,
                  width: 152.h,
                  radius: BorderRadius.circular(
                    6.h,
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavoritePrimary,
                  height: 8.v,
                  width: 11.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 2.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildResortComponent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 52.v,
            crossAxisCount: 2,
            mainAxisSpacing: 22.h,
            crossAxisSpacing: 22.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .pageTwoModelObj.value.resortcomponentItemList.value.length,
          itemBuilder: (context, index) {
            ResortcomponentItemModel model = controller
                .pageTwoModelObj.value.resortcomponentItemList.value[index];
            return ResortcomponentItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLineTwentyOne() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Column(
        children: [
          Divider(
            color: theme.colorScheme.errorContainer.withOpacity(1),
          ),
          SizedBox(height: 18.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_prev".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "  ".tr,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_1".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "  ".tr,
                ),
                TextSpan(
                  text: "      ".tr,
                ),
                TextSpan(
                  text: "lbl_2".tr,
                  style: CustomTextStyles.bodyMediumPrimary,
                ),
                TextSpan(
                  text: "lbl_3".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_4".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                TextSpan(
                  text: "  ".tr,
                ),
                TextSpan(
                  text: "lbl_next2".tr,
                  style: theme.textTheme.bodyMedium,
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
