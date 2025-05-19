import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'game/blue_vs_red_game.dart';
import 'screens/character_creation_screen.dart';
import 'screens/game_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<BlueVsRedGame>(
          create: (_) => BlueVsRedGame(),
          dispose: (_, game) => game.onDispose(),
        ),
      ],
      child: const BlueVsRedApp(),
    ),
  );
}

class BlueVsRedApp extends StatelessWidget {
  const BlueVsRedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blue vs Red',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const CharacterCreationScreen(),
        '/game': (context) => const GameScreen(),
      },
    );
  }
}
