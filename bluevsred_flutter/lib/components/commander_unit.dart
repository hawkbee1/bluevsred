import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class CommanderUnit extends PositionComponent {
  static final _paint = Paint()..color = Colors.blueAccent; // Commander's color

  CommanderUnit({
    super.position,
    Vector2? size,
  }) : super(
          size: size ?? Vector2.all(50), // Default size 50x50
          anchor: Anchor.center, // Anchor at the center for easy positioning
        );

  @override
  void render(Canvas canvas) {
    super.render(canvas);
    // Draw a circle for the commander unit.
    // The canvas is already translated to the component's position.
    // We draw relative to (0,0) of the component's local coordinates.
    // Since anchor is center, (0,0) is the center of the component.
    // To draw a circle centered at the component's anchor:
    canvas.drawCircle(Offset.zero, size.x / 2, _paint);
  }
}
