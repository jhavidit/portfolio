// this file contains all color code which is being used across the app.
// Don't use any explicit color code or any other function apart from the below functions.

// Feel free to update and add functionality related to colors in this file only.

import 'dart:ui';
import 'package:portflio_flutter/portfolio.dart';


class BaseColors {
  static const indBlue = "#1366E8";
  static const indDarkBlue = "#283964";
  static const indWhite = "#ffffff";
  static const indBlack = "#191C1F";
  static const indExtraDarkBlue = "#101C3D";
  static const colorPrimary = "#0E65D7";
  static const indBlueDark = "#283964";
  static const indGreyDark = "#47494C";
  static const indGreyLight = "#BDBDBD";
  static const indGreyBg = "#F5F5F8";
  static const indGrey = "#757779";
  static const indGed = "#DF3C27";
  static const indOrange = "#FF6631";
  static const indYellow = "#FFC40D";
  static const indGreen = "#33A34D";
  static const indFluorescentGreen = "#31ED5D";
  static const indTertiaryGrey = "#F5F7F9";
  static const indTertiaryOrange = "#FDF0E3";
  static const indTertiaryBlue = "#E8F4FD";
  static const indTertiaryRed = "#FAEAEA";
  static const indTertiaryGreen = "#EBF4EC";
  static const indTertiaryGold = "#FCF8F3";

  static const ripplePrimary = "#160e65d7";
  static const defaultWindowBackground = "#F5F5F8";
  static const grayOnBlueBackground = "#848A96";
  static const transparentWhite = "#4DFFFFFF";
  static const starYellow = "#ffd54f";
  static const greyF5 = "#F5F7F9";
  static const divider = "#eeeeee";
  static const error = "#F84B3E";
  static const inProgress = "#ffa726";
  static const techStarTransRed = "#DF3C27";
  static const graphSmallCap = "#FFEF5350";
  static const graphLargeCap = "#ffa726";
  static const graphMultiCap = "#448aff";
  static const graphCash = "#FF19BE6C";
  static const failedBackground = "#fee4e2";
  static const successBackground = "#ddf6e9";
  static const inProgressBackground = "#FFFFF7DF";
  static const blueNeutral = "#5693E3";
  static const blueNegative = "#084089";
  static const blueDisabled = "#98CAFF";
  static const blueTransparent = "#550E65D7";
  static const chipLightBlue = "#FFE6EFFB";
  static const chipLightGrey = "#EDEDED";
  static const blueLight = "#E8F4FD";
  static const greyLineDivider = "#e0e0e0";
  static const blueDivider = "#C7D7EA";
  static const bgChipLightBlue = "#e6effb";
  static const dividerColor = "#e0e0e0";
  static const bgGreen = "#00CA97";
  static const bgLightRed = "#FFE4E4";
  static const success = "#00C792";
  static const bgLightBlue = "#E0EEFF";
  static const gold = "#C2942A";
  static const indicatorProgress = "#D6B445";
  static const bluePadlock = "#017AFF";
  static const bgWhiteTenPercentAlpha = "#1AFFFFFF";
  static const bgWhiteEightyPercentAlpha = "#CCFFFFFF";
  static const bgWhiteTwentyFivePercentAlpha = "#40FFFFFF";
  static const whiteWith50Alpha = "#8CFFFFFF";
  static const whiteWith6Alpha = "#0FFFFFFF";
  static const bgGreyCircular = "#F7F7F7";
  static const bgGreyCircular2 = "#F5F5F8";
  static const searchBackground = "#FFDADEE5";
  static const iconBg = "#F4F9FF";
  static const chipLightBg = "#e6effb";
  static const gradientGreenDark = "#018777";
  static const gradientGreenLight = "#13CB92";
  static const gradientRedDark = "#DD2D20";
  static const gradientRedLight = "#D16969";
  static const gradientGoldLight = "#ffe1af";
  static const gradientGoldDark = "#e0b578";
  static const gradientBlueDark = "#121B30";
  static const gradientBlueLight = "#283964";
  static const backgroundShimmer = "#E1E1E1";
  static const whiteTransparency20 = "#33ffffff";
  static const whiteTransparency30 = "#4Dffffff";
  static const whiteTransparency50 = "#80ffffff";
  static const whiteTransparency70 = "#B3ffffff";
  static const whiteTransparency10 = "#10ffffff";
  static const redText = "#ff3333";
  static const redColorRegularFund = "#DF0C0C";
  static const greenDirectFund = "#6AC10D";
  static const whiteColor = "#FFFFFF";
  static const gradientCreditCineBlueDark = "#195EB8";
  static const gradientCreditLineBlueLight = "#0063FF";
  static const investmentReadyGreen = "#FF1DA66A";
  static const investmentReadyOrange = "#fe9e25";
  static const colorPrimaryDisabled = "#3B4F67";
  static const colorPrimeWallBack = "#10132F";
  static const techStarBgGradientColorStart = "#283964";
  static const techStarBgGradientColorEnd = "#101C3D";
  static const supportedGreen = "#60B506";
  static const notSupportedGrey = "#6D6D6D";
  static const grey75 = "#757779";
  static const buttonGrey = "#F2F2F2";
  static const commonGrey = "#C4C4C4";
  static const etGreyBg = "#F5F7F9";
  static const cardShadow = "#80848A96";
  static const liquidSwitchColor = "#853C4F";
  static const iconDarkBlue = "#283964";
  static const darkBlue = "#283964";
  static const error_2 = "#DF3C27";
  static const green_2 = "#33A34D";
  static const lightGreen = "#E4FBDE";
  static const rippleColor = "#0099CC";
  static const tvStatusRed = "#24EC2A00";
  static const tvStatusGreen = "#2413EC00";
  static const transparent = "#00FFFFFF";
  static const defaultHexWhite = "FFFFFFFF";
}

class HexColor extends Color {
  static int _getColorFromHex(String? hexColor) {
    if (hexColor.isNullOrEmpty()) {
      return int.parse(BaseColors.defaultHexWhite, radix: 16);
    }
    hexColor = hexColor?.toUpperCase().replaceAll("#", "");
    if (hexColor?.length == 6) {
      hexColor = "FF${hexColor!}";
    }
    try {
      return int.parse(hexColor!, radix: 16);
    } catch (e) {
      return int.parse(BaseColors.defaultHexWhite, radix: 16);
    }
  }

  HexColor(final String? hexColor) : super(_getColorFromHex(hexColor));
}

// add extension function related to colors below only
extension Colors on String? {
  Color getHexColor() => HexColor(this);
}
