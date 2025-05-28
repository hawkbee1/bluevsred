import 'package:flame/game.dart';
import 'package:flutter/widgets.dart'; // Using widgets.dart for StatelessWidget
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:bluevsred_flutter/components/commander_unit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: GameWidget(game: BlueVsRedGame()),
    );
  }
}

class BlueVsRedGame extends FlameGame {
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    // Add the CommanderUnit to the game.
    // Its position will be set in onGameResize.
    final commander = CommanderUnit();
    add(commander);
  }

  @override
  void onGameResize(Vector2 size) {
    super.onGameResize(size);
    // Find the commander unit if it exists
    final commander = children.whereType<CommanderUnit>().firstOrNull;
    if (commander != null) {
      // Position the commander at the center of the screen
      commander.position = size / 2;
    }
    // Center the camera on the middle of the game area.
    camera.viewfinder.position = size / 2;
  }
}
