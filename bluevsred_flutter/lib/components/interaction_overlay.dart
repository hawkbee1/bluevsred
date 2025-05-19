import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

import '../models/interactive_object.dart';
import '../game/blue_vs_red_game.dart';

/// Component that displays action options when an interactive object is selected
class InteractionOverlay extends PositionComponent with TapCallbacks {
  /// The game reference
  final BlueVsRedGame game;
  
  /// The interactive object being interacted with
  final InteractiveObject object;
  
  /// List of action buttons
  final List<ActionButton> _actionButtons = [];
  
  /// Background paint
  final Paint _backgroundPaint = Paint()..color = Colors.white.withOpacity(0.8);
  
  /// Border paint
  final Paint _borderPaint = Paint()
    ..color = Colors.black
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2.0;
  
  /// Callback when overlay is closed
  final Function()? onClose;

  /// Creates a new interaction overlay
  InteractionOverlay({
    required this.game,
    required this.object,
    required Vector2 position,
    this.onClose,
  }) : super(
          position: position,
          size: Vector2(200, 150),
          anchor: Anchor.center,
        );

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    
    // Create header text
    final headerText = TextComponent(
      text: object.name,
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      anchor: Anchor.topCenter,
      position: Vector2(size.x / 2, 10),
    );
    add(headerText);

    // Create description text
    final descriptionText = TextComponent(
      text: object.description,
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.black87,
          fontSize: 12,
        ),
      ),
      anchor: Anchor.topCenter,
      position: Vector2(size.x / 2, 35),
    );
    add(descriptionText);

    // Create close button
    final closeButton = ButtonComponent(
      button: RectangleComponent(
        size: Vector2(20, 20),
        paint: Paint()..color = Colors.red.withOpacity(0.8),
      ),
      onPressed: () {
        if (onClose != null) {
          onClose!();
        }
        removeFromParent();
      },
      anchor: Anchor.topRight,
      position: Vector2(size.x - 5, 5),
      size: Vector2(20, 20),
    );
    
    // Add X mark to close button
    final closeX = TextComponent(
      text: 'X',
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      anchor: Anchor.center,
      position: Vector2(10, 10),
    );
    closeButton.add(closeX);
    add(closeButton);

    // Create action buttons
    double buttonY = 60;
    for (final action in object.possibleActions.entries) {
      final actionButton = ActionButton(
        action: action.key,
        requiredSkill: action.value,
        onPressed: () {
          game.performAction(object, action.key);
          if (onClose != null) {
            onClose!();
          }
          removeFromParent();
        },
        position: Vector2(size.x / 2, buttonY),
        size: Vector2(160, 30),
      );
      add(actionButton);
      _actionButtons.add(actionButton);
      
      buttonY += 35;
    }

    // Adjust the height based on the number of actions
    size.y = 65 + (object.possibleActions.length * 35);
  }

  @override
  void render(Canvas canvas) {
    // Draw background with rounded corners
    final rect = Rect.fromLTWH(0, 0, size.x, size.y);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(10));
    canvas.drawRRect(rrect, _backgroundPaint);
    canvas.drawRRect(rrect, _borderPaint);
    
    super.render(canvas);
  }
}

/// A button component representing an available action
class ActionButton extends PositionComponent with TapCallbacks {
  /// The action name
  final String action;
  
  /// The required skill name
  final String requiredSkill;
  
  /// Callback when button is pressed
  final Function() onPressed;
  
  /// Background paint
  final Paint _buttonPaint = Paint()..color = Colors.blue.withOpacity(0.7);
  
  /// Border paint
  final Paint _borderPaint = Paint()
    ..color = Colors.blue
    ..style = PaintingStyle.stroke
    ..strokeWidth = 2.0;

  /// Creates a new action button
  ActionButton({
    required this.action,
    required this.requiredSkill,
    required this.onPressed,
    required Vector2 position,
    required Vector2 size,
  }) : super(
          position: position,
          size: size,
          anchor: Anchor.center,
        );

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    
    // Add action text
    final actionText = TextComponent(
      text: action,
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      anchor: Anchor.centerLeft,
      position: Vector2(10, size.y / 2),
    );
    
    // Add skill text
    final skillText = TextComponent(
      text: requiredSkill,
      textRenderer: TextPaint(
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 10,
          fontStyle: FontStyle.italic,
        ),
      ),
      anchor: Anchor.centerRight,
      position: Vector2(size.x - 10, size.y / 2),
    );
    
    add(actionText);
    add(skillText);
  }

  @override
  void render(Canvas canvas) {
    // Draw button background with rounded corners
    final rect = Rect.fromLTWH(0, 0, size.x, size.y);
    final rrect = RRect.fromRectAndRadius(rect, const Radius.circular(5));
    canvas.drawRRect(rrect, _buttonPaint);
    canvas.drawRRect(rrect, _borderPaint);
    
    super.render(canvas);
  }
  
  @override
  void onTapUp(TapUpEvent event) {
    onPressed();
  }
}