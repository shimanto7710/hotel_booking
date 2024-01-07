import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumGilroyRegular =>
      theme.textTheme.bodyMedium!.gilroyRegular.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGilroyRegularErrorContainer =>
      theme.textTheme.bodyMedium!.gilroyRegular.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGilroyRegularOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.gilroyRegular.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGilroyRegularOnPrimaryContainerRegular =>
      theme.textTheme.bodyMedium!.gilroyRegular.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGilroyRegularRegular =>
      theme.textTheme.bodyMedium!.gilroyRegular.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGilroySemiBold =>
      theme.textTheme.bodyMedium!.gilroySemiBold.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumOnError => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get bodySmallErrorContainer10 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 10.fSize,
      );
  static get bodySmallErrorContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get bodySmallGilroyMedium =>
      theme.textTheme.bodySmall!.gilroyMedium.copyWith(
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 10.fSize,
      );
  // Title text style
  static get titleLargeGilroyMedium =>
      theme.textTheme.titleLarge!.gilroyMedium.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGilroyMediumOnPrimaryContainer =>
      theme.textTheme.titleLarge!.gilroyMedium.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGilroyMediumPrimary =>
      theme.textTheme.titleLarge!.gilroyMedium.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGilroyMediumRegular =>
      theme.textTheme.titleLarge!.gilroyMedium.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeGilroyRegular =>
      theme.textTheme.titleLarge!.gilroyRegular.copyWith(
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumErrorContainer => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get titleMediumOxygenGray80001 =>
      theme.textTheme.titleMedium!.oxygen.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get titleSmallJuraGray800 => theme.textTheme.titleSmall!.jura.copyWith(
        color: appTheme.gray800,
        fontSize: 15.fSize,
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallOxygen => theme.textTheme.titleSmall!.oxygen.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallOxygenPrimary =>
      theme.textTheme.titleSmall!.oxygen.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
}

extension on TextStyle {
  TextStyle get jura {
    return copyWith(
      fontFamily: 'Jura',
    );
  }

  TextStyle get oxygen {
    return copyWith(
      fontFamily: 'Oxygen',
    );
  }

  TextStyle get gilroyRegular {
    return copyWith(
      fontFamily: 'Gilroy-Regular',
    );
  }

  TextStyle get gilroyMedium {
    return copyWith(
      fontFamily: 'Gilroy-Medium',
    );
  }

  TextStyle get gilroySemiBold {
    return copyWith(
      fontFamily: 'Gilroy-SemiBold',
    );
  }

  TextStyle get urbane {
    return copyWith(
      fontFamily: 'Urbane',
    );
  }
}
