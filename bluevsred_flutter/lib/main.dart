import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: GameWidget(game: BlueVsRedGame()),
    ),
  );
}

class BlueVsRedGame extends FlameGame {
  // Add game logic here
}
