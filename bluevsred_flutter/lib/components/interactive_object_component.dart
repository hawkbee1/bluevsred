import 'package:flame/components.dart';
import 'package:flutter/material.dart';

import '../models/interactive_object.dart';

/// Component that renders an interactive object in the game
class InteractiveObjectComponent extends PositionComponent {
  /// The interactive object model
  final InteractiveObject object;
  
  /// The paint to use for rendering
  final Paint _paint = Paint();
  
  /// Flag to track if this object is being hovered
  bool _isHovered = false;
  
  /// Creates a new interactive object component
  InteractiveObjectComponent({
    required this.object,
  }) : super(
          position: object.position,
          size: object.size,
          anchor: Anchor.topLeft,
        );

  @override
  void render(Canvas canvas) {
    // Draw the object background
    _paint.color = _getColorForObjectType(object.type);
    canvas.drawRect(size.toRect(), _paint);
    
    // Draw a border if hovered
    if (_isHovered) {
      _paint.color = Colors.yellow;
      _paint.style = PaintingStyle.stroke;
      _paint.strokeWidth = 2.0;
      canvas.drawRect(size.toRect(), _paint);
      _paint.style = PaintingStyle.fill;
    }
    
    // Draw the name
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );
    
    final textSpan = TextSpan(
      text: object.name,
      style: textStyle,
    );
    
    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );
    
    textPainter.layout(minWidth: 0, maxWidth: size.x);
    
    final xPosition = (size.x - textPainter.width) / 2;
    final yPosition = (size.y - textPainter.height) / 2;
    
    textPainter.paint(canvas, Offset(xPosition, yPosition));
  }
  
  /// Sets the hover state of the object
  void setHovered(bool hovered) {
    _isHovered = hovered;
  }
  
  /// Returns a color based on the object type
  Color _getColorForObjectType(InteractiveObjectType type) {
    switch (type) {
      case InteractiveObjectType.bed:
        return Colors.blue[300]!;
      case InteractiveObjectType.desk:
        return Colors.brown[400]!;
      case InteractiveObjectType.toilet:
        return Colors.grey[300]!;
      case InteractiveObjectType.armoryWorkshop:
        return Colors.red[400]!;
      case InteractiveObjectType.fridge:
        return Colors.grey[400]!;
      case InteractiveObjectType.oven:
        return Colors.black87;
      case InteractiveObjectType.plates:
        return Colors.white70;
      case InteractiveObjectType.diningArea:
        return Colors.amber[300]!;
    }
  }
}