import 'package:flutter/material.dart';
import 'package:tutero_asteroids_game/src/pages/game_screen.dart';
import 'package:tutero_asteroids_game/src/utils/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
      home:const GameScreen(),
    );
  }
}
