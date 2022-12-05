import 'package:flutter/material.dart';
import 'package:exam_weather_flutter/core/extensions/color_extension.dart';

class AppThemeData {
  final Brightness _brightness;

  late Color inputFill;
  late Color inputBorder;
  late Color inputBorderFocused;
  late Color hintColor;
  late MaterialColor primaryColor;
  late MaterialColor secondaryColor;
  late MaterialColor mutedColor;
  late Color borderColor;
  final borderRadius = 10.0;

  AppThemeData(this._brightness) {
    final bool isDark = _brightness == Brightness.dark;
    mutedColor = const Color.fromRGBO(245, 245, 245, 1.0).generateMaterialColor();
    inputFill = (isDark ? const Color.fromRGBO(245, 245, 245, 1.0) : mutedColor[500])!;
    borderColor = inputFill;
    inputBorder = Colors.black;
    inputBorderFocused = Colors.black;
    hintColor = mutedColor[800]!;
    primaryColor = const Color(0xFF6200EE).generateMaterialColor();
    secondaryColor = const Color(0xFFBB86FC).generateMaterialColor();
  }
}
