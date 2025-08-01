// lib/config/theme/app_theme.dart

import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F); // Un color morado corporativo
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
    : assert(
        selectedColor >= 0 && selectedColor < _colorThemes.length,
        'Colors must be between 0 and ${_colorThemes.length - 1}',
      );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: _colorThemes[selectedColor],
    appBarTheme: const AppBarTheme(centerTitle: true, elevation: 2),
  );
}
