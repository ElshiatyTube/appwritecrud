import 'package:flutter/material.dart';

import 'font_manager.dart';

enum StyleManager {
  xSmallRegular,
  smallRegular,
  mediumRegular,
  mediumBold,
  largeRegular,
  xLargeRegular,
  smallBold,
  largeBold,
  xLargeBold,
  numbersLargeRegular,
  numbersLargeBold,
  numbersXLargeRegular,
  numbersXLargeBold,
  numbersMediumRegular,
  numbersMediumBold,
  numbersSmallRegular,
  numbersSmallBold
}

/// Extension on `StyleManager` to provide text styles based on the style manager.
extension ThemeExtension on StyleManager {
  TextStyle getStyle({required BuildContext context}) {
    switch (this) {
      case StyleManager.xSmallRegular:
        return Theme.of(context).textTheme.headlineSmall!;
      case StyleManager.smallRegular:
        return Theme.of(context).textTheme.titleMedium!;
      case StyleManager.largeRegular:
        return Theme.of(context).textTheme.displayLarge!;
      case StyleManager.xLargeRegular:
        return Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(fontSize: FontSizeManager.s24);
      case StyleManager.xLargeBold:
        return StyleManager.xLargeRegular
            .getStyle(context: context)
            .copyWith(fontWeight: FontWeightManager.bold);
      case StyleManager.mediumRegular:
        return Theme.of(context).textTheme.bodyLarge!;
      case StyleManager.mediumBold:
        return Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(fontWeight: FontWeightManager.bold);

      case StyleManager.smallBold:
        return Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeightManager.bold);

      case StyleManager.largeBold:
        return Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(fontWeight: FontWeightManager.bold);
      case StyleManager.numbersXLargeRegular:
        return Theme.of(context)
            .textTheme
            .displayMedium!
            .copyWith(fontWeight: FontWeightManager.regular);
      case StyleManager.numbersXLargeBold:
        return Theme.of(context).textTheme.displayMedium!;
      case StyleManager.numbersLargeRegular:
        return Theme.of(context).textTheme.displayMedium!.copyWith(
            fontWeight: FontWeightManager.regular,
            fontSize: FontSizeManager.s32);
      case StyleManager.numbersLargeBold:
        return StyleManager.numbersLargeRegular
            .getStyle(context: context)
            .copyWith(fontWeight: FontWeightManager.bold);
      case StyleManager.numbersMediumRegular:
        return Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: FontSizeManager.s20,
            fontWeight: FontWeightManager.regular);
      case StyleManager.numbersMediumBold:
        return Theme.of(context).textTheme.bodyLarge!.copyWith(
            fontSize: FontSizeManager.s20, fontWeight: FontWeightManager.bold);
      case StyleManager.numbersSmallRegular:
        return Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(fontWeight: FontWeightManager.regular);
      case StyleManager.numbersSmallBold:
        return Theme.of(context).textTheme.titleSmall!;
    }
  }
}
