import 'package:flutter/material.dart';
import 'package:shimanto_s_application1/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgGroup36,
      activeIcon: ImageConstant.imgGroup36,
      type: BottomBarEnum.Group36,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVectorGray80001,
      activeIcon: ImageConstant.imgVectorGray80001,
      type: BottomBarEnum.Vectorgray80001,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgVectorGray8000118x18,
      activeIcon: ImageConstant.imgVectorGray8000118x18,
      type: BottomBarEnum.Vectorgray8000118x18,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup76,
      activeIcon: ImageConstant.imgGroup76,
      type: BottomBarEnum.Group76,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76.v,
      decoration: BoxDecoration(),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedFontSize: 0,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 18.v,
                width: 20.h,
                color: appTheme.gray80001,
              ),
              activeIcon: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 22.adaptSize,
                width: 22.adaptSize,
                color: theme.colorScheme.primary,
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Group36,
  Vectorgray80001,
  Vectorgray8000118x18,
  Group76,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
