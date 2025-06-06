// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:ui'; // Import for Size

import 'package:bluevsred_flutter/game/blue_vs_red_game.dart';
import 'package:bluevsred_flutter/main.dart'; // Imports BlueVsRedGame and MyApp
import 'package:flame/game.dart'; // Ensure Game is imported for GameWidget<Game>
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bluevsred_flutter/components/commander_unit.dart'; // Import CommanderUnit

void main() {
  testWidgets('MyApp renders GameWidget and CommanderUnit is added to game', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp()); // Use MyApp

    // Pump a single frame to allow the game to build and render.
    await tester.pump(Duration.zero);

    // Verify that GameWidget is present.
    expect(find.byType(GameWidget<BlueVsRedGame>), findsOneWidget);

    // Verify that CommanderUnit is present within the game.
    final gameWidget = tester.widget<GameWidget<BlueVsRedGame>>(find.byType(GameWidget<BlueVsRedGame>));
    final game = gameWidget.game; // game is non-nullable in GameWidget
    
    expect(game!.children.whereType<CommanderUnit>().length, 1, reason: "CommanderUnit should be added to the game");
  });

  testWidgets('BlueVsRedGame onGameResize correctly positions CommanderUnit and camera', (WidgetTester tester) async {
    final game = BlueVsRedGame();
    // It's important to use a ProviderScope here if BlueVsRedGame or its children might use Riverpod
    await tester.pumpWidget(
      ProviderScope( // Ensure ProviderScope if game or children use it
        child: GameWidget(game: game),
      ),
    );
    await tester.pump(Duration.zero); // Initial load

    // Simulate a resize
    final testSize = Size(800, 600); // Removed const
    await tester.binding.setSurfaceSize(testSize);
    
    // Trigger a re-render with the new size for the GameWidget to pick it up
    // Re-pump the widget tree that contains GameWidget
    await tester.pumpWidget(
      ProviderScope( // Ensure ProviderScope
        child: GameWidget(game: game), // Re-pump with the same game instance
      ),
    );
    await tester.pump(Duration.zero); // Allow game to process resize

    final commander = game.children.whereType<CommanderUnit>().firstOrNull;
    expect(commander, isNotNull, reason: "CommanderUnit should exist in the game");
    expect(commander!.position, Vector2(testSize.width / 2, testSize.height / 2),
        reason: "CommanderUnit should be centered after resize");
    expect(game.camera.viewfinder.position, Vector2(testSize.width / 2, testSize.height / 2),
        reason: "Camera viewfinder should be centered after resize");
  });
}
