import '../page_one_screen/widgets/userprofile_item_widget.dart';
import '../page_one_screen/widgets/viewhierarchy_item_widget.dart';
import 'controller/page_one_controller.dart';
import 'models/userprofile_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';
import 'package:shimanto_s_application1/presentation/page_two_page/page_two_page.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:shimanto_s_application1/widgets/app_bar/appbar_trailing_image.dart';
import 'package:shimanto_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:shimanto_s_application1/widgets/custom_bottom_bar.dart';
import 'package:shimanto_s_application1/widgets/custom_search_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore_for_file: must_be_immutable
class PageOneScreen extends GetWidget<PageOneController> {
  const PageOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFiftySeven(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.h,
                  vertical: 4.v,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 17.v),
                    _buildUserProfile(),
                    SizedBox(height: 7.v),
                    Obx(
                      () => SizedBox(
                        height: 7.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: controller.sliderIndex.value,
                          count: controller.pageOneModelObj.value
                              .userprofileItemList.value.length,
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
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftySeven() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.outlineErrorContainer2.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL6,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            height: 18.v,
            leadingWidth: 43.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 25.h,
                top: 2.v,
                bottom: 4.v,
              ),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgTelevision,
                margin: EdgeInsets.symmetric(horizontal: 26.h),
              ),
            ],
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: CustomSearchView(
              controller: controller.searchController,
              hintText: "lbl_where_to".tr,
            ),
          ),
          SizedBox(height: 8.v),
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
            controller.pageOneModelObj.value.userprofileItemList.value.length,
        itemBuilder: (context, index, realIndex) {
          UserprofileItemModel model =
              controller.pageOneModelObj.value.userprofileItemList.value[index];
          return UserprofileItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPopulerOnOOHGO() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 19.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              right: 6.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_populer_on_oohgo".tr,
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
            height: 177.v,
            child: Obx(
              () => ListView.separated(
                padding: EdgeInsets.only(left: 1.h),
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
                    .pageOneModelObj.value.viewhierarchyItemList.value.length,
                itemBuilder: (context, index) {
                  ViewhierarchyItemModel model = controller
                      .pageOneModelObj.value.viewhierarchyItemList.value[index];
                  return ViewhierarchyItemWidget(
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
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Group36:
        return AppRoutes.pageTwoPage;
      case BottomBarEnum.Vectorgray80001:
        return "/";
      case BottomBarEnum.Vectorgray8000118x18:
        return "/";
      case BottomBarEnum.Group76:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.pageTwoPage:
        return PageTwoPage();
      default:
        return DefaultWidget();
    }
  }
}
