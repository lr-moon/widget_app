import 'package:flutter/material.dart';

const colorList=<Color>[
  Colors.cyan,
  Colors.purpleAccent,
  Colors.teal,
  Colors.pinkAccent,
  Colors.yellow,
  Colors.blue,
  Colors.green,
  Colors.red,
];
class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor=0})
  //assert se muestran en pruebas
  :assert (selectedColor>=0,'Selected color must be greater than 0'),assert(selectedColor<colorList.length,'Selected color must be less than ${colorList.length}');

//ThemeData permite guardar colores
ThemeData getTheme()=> ThemeData(
  useMaterial3: true,
  colorSchemeSeed: colorList[selectedColor],
  appBarTheme: const AppBarTheme(centerTitle: true),
  );
}