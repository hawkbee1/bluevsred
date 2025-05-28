import 'package:bluevsred_flutter/components/commander_unit.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart'; // Import FlameGame
import 'package:flame_test/flame_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CommanderUnit', () {
    // Use FlameGameTest for components that require game lifecycle methods
    // or access to game properties like camera.viewport
    final testGame = FlameGame(); 
    // It's good practice to simulate onGameResize if your component's logic
    // depends on game size or if it's positioned relative to the screen.
    testGame.onGameResize(Vector2(800, 600)); 

    testWithGame('can be added to a game', () => testGame, (game) async {
      final commander = CommanderUnit();
      await game.ensureAdd(commander);
      expect(game.children.contains(commander), isTrue);
    });

    test('default size is 50x50', () {
      final commander = CommanderUnit();
      expect(commander.size, Vector2.all(50));
    });

    test('can be created with a specific position', () {
      final position = Vector2(100, 150);
      final commander = CommanderUnit(position: position);
      // The position is set directly in the constructor
      expect(commander.position, position);
    });

    test('anchor is center', () {
      final commander = CommanderUnit();
      expect(commander.anchor, Anchor.center);
    });

    // A simple render test can be done by ensuring it doesn't throw.
    // More complex render tests (golden tests) are also possible.
    testWithGame('renders without error', () => FlameGame(), (game) async {
      final commander = CommanderUnit();
      await game.ensureAdd(commander);
      // game.update(0); // Call update to process any pending changes
      // game.render(MockCanvas()); // This would require a MockCanvas or similar
      // For now, just adding it and ensuring no exceptions during lifecycle is a good start.
      expect(commander.isMounted, isTrue); 
    });
  });
}
