import 'dart:ui';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class AppColors {
  Color primaryColor = HexColor("#FFC107");
  Color secondaryColor = HexColor("#FFEB3B");
  Color primaryTextColor = HexColor("#212121");
  Color secondaryTextColor = HexColor("#757575");
  Color accentColor = HexColor("#FFEB3B");
  Color dividerColor = HexColor("#BDBDBD");
  Color backgroundColor = HexColor("#F5F5F5");
  Color errorColor = HexColor("#F44336");
  Color successColor = HexColor("#4CAF50");
  Color warningColor = HexColor("#FF9800");
  Color infoColor = HexColor("#2196F3");
  Color lightColor = HexColor("#F5F5F5");
  Color darkColor = HexColor("#212121");
  Color greyColor = HexColor("#9E9E9E");
}

