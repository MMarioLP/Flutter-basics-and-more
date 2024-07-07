import 'package:flutter/material.dart';

//un tema a apartir de un color hex
const Color _customColor = Color(0xFFF6F0080);

//una lista de temas predefinidos
const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.red,
  Colors.purple,
  Colors.pink,
  Colors.yellow,
  Colors.green,
  Colors.blue
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 7})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'El color se debe encontrar entre 0 y ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark
    );
  }
}
