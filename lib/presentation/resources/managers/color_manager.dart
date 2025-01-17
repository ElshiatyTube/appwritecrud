import 'package:flutter/material.dart';

/// [ColorManager] class
/// Contains all Application Colors
class ColorManager {
  static Color background = HexColor.fromHex("#F2F2F2");
  static Color primary = HexColor.fromHex("#FD366E");
  static Color wireFrameMainColor = HexColor.fromHex("#C4C4C4");
  static Color wireFrameCircleTile = HexColor.fromHex("#F6F6F6");
  static Color wireFrameMainColorWithOpacity = HexColor.fromHex("#C4C4C480");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737477");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color primaryOpacity70 = HexColor.fromHex("#B3ED9728");
  static Color darkPrimary = HexColor.fromHex("#d17d11");
  static Color disabledGrey = HexColor.fromHex("#7D7D7D");
  static Color concrete = HexColor.fromHex("#F3F3F3");
  static Color gray = HexColor.fromHex("#8A8A8A");
  static Color grey1 = HexColor.fromHex("#707070");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color error = HexColor.fromHex("#FE4C4C");
  static Color black = HexColor.fromHex("#000000");
  static Color mainGradient = HexColor.fromHex("#ADFFF4");
  static Color blueGradient = HexColor.fromHex("#B4FEF1");
  static Color secGradient = HexColor.fromHex("#C2FFE6");
  static Color greenGradient = HexColor.fromHex("#8DFEEF");
  static Color borderColor = HexColor.fromHex("#79FFC7");
  static Color greenTextColor = HexColor.fromHex("#79FFC7");
  static Color dividerColor = const Color.fromRGBO(0, 0, 0, 0.5);
  static Color stepColor = HexColor.fromHex("#D3D3D3");
  static Color dueDateColor = HexColor.fromHex("#6C4CF2");
  static Color orange = HexColor.fromHex("#FFA370");
}

/// [HexColor] extension
/// Convert form  {hex color string} to Color
extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
