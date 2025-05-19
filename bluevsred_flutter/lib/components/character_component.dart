import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../models/character.dart';

/// Component that renders the player character in the game
class CharacterComponent extends PositionComponent {
  /// The character model
  final Character character;
  
  /// The paint to use for rendering
  final Paint _paint = Paint();
  
  /// Character movement speed
  static const double speed = 150.0;
  
  /// Target position for movement
  Offset? _targetPosition;
  
  /// Creates a new character component
  CharacterComponent({
    required this.character,
    required Vector2 position,
  }) : super(
          position: position,
          size: Vector2(40, 40),
          anchor: Anchor.center,
        );

  @override
  void render(Canvas canvas) {
    // Draw the character as a circle with the chosen color
    _paint.color = character.chosenColor;
    canvas.drawCircle(
      Offset(size.x / 2, size.y / 2),
      size.x / 2,
      _paint,
    );
    
    // Draw a border
    _paint.color = Colors.white;
    _paint.style = PaintingStyle.stroke;
    _paint.strokeWidth = 2.0;
    canvas.drawCircle(
      Offset(size.x / 2, size.y / 2),
      size.x / 2,
      _paint,
    );
    _paint.style = PaintingStyle.fill;
    
    // Draw the name
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
    
    final textSpan = TextSpan(
      text: character.name,
      style: textStyle,
    );
    
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    
    textPainter.layout();
    
    final xPosition = (size.x - textPainter.width) / 2;
    final yPosition = -textPainter.height - 5;
    
    textPainter.paint(canvas, Offset(xPosition, yPosition));
  }
  
  @override
  void update(double dt) {
    super.update(dt);
    
    // Move towards target position if it exists
    if (_targetPosition != null) {
      final currentPosition = Vector2(position.x, position.y);
      final target = Vector2(_targetPosition!.dx, _targetPosition!.dy);
      
      if (currentPosition.distanceTo(target) > 5) {
        final direction = target - currentPosition;
        direction.normalize();
        
        position += direction * speed * dt;
      } else {
        // Close enough to target, stop moving
        _targetPosition = null;
      }
    }
  }
  
  /// Sets a new target position for the character to move towards
  void moveTo(Offset newPosition) {
    _targetPosition = newPosition;
  }
}