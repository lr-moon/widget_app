import 'package:flutter/material.dart';
import 'package:widget_app/config/theme/app_theme.dart';
import 'package:widget_app/presentation/screens/home/home_screen.dart';

void main() => runApp(const MyApp());
//mateap permite crear una aplicacion basica
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(//MaterialApp:es la parte del diseño
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor:5).getTheme(),
      title: 'Material App',
      home: const HomeScreen(),
    );
  }
}