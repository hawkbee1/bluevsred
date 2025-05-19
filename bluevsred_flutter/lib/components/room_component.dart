import 'package:flame/components.dart';
import 'package:flame/events.dart';
import 'package:flutter/material.dart';

import '../game/blue_vs_red_game.dart';
import '../models/interactive_object.dart';
import 'character_component.dart';
import 'interactive_object_component.dart';
import 'interaction_overlay.dart';

/// Component that manages the room and all objects within it
class RoomComponent extends PositionComponent with TapCallbacks, HoverCallbacks {
  /// Reference to the main game
  final BlueVsRedGame game;
  
  /// The character component
  late CharacterComponent _characterComponent;
  
  /// Map of interactive object components by their ID
  final Map<String, InteractiveObjectComponent> _objectComponents = {};
  
  /// Currently hovered object component
  InteractiveObjectComponent? _hoveredObject;
  
  /// Currently selected object for interaction
  InteractiveObject? _selectedObject;
  
  /// Current interaction overlay
  InteractionOverlay? _interactionOverlay;

  /// Creates a new room component
  RoomComponent({
    required this.game,
  }) : super(
          position: Vector2.zero(),
          size: Vector2(800, 600),
          anchor: Anchor.topLeft,
        );

  @override
  Future<void> onLoad() async {
    await super.onLoad();
    
    // Create character component
    _characterComponent = CharacterComponent(
      character: game.character,
      position: Vector2(size.x / 2, size.y / 2),
    );
    add(_characterComponent);
    
    // Create interactive object components
    for (final object in game.interactiveObjects) {
      final component = InteractiveObjectComponent(object: object);
      _objectComponents[object.id] = component;
      add(component);
    }
  }
  
  @override
  void onTapUp(TapUpEvent event) {
    final tapPosition = event.localPosition;
    final worldPosition = event.localPosition;
    
    // If there's an open interaction overlay, close it first
    if (_interactionOverlay != null) {
      _closeInteractionOverlay();
      return;
    }
    
    // Check if an object was tapped
    InteractiveObject? tappedObject;
    for (final object in game.interactiveObjects) {
      if (object.containsPoint(Offset(worldPosition.x, worldPosition.y))) {
        tappedObject = object;
        break;
      }
    }
    
    if (tappedObject != null) {
      // Object was tapped, select it
      _selectedObject = tappedObject;
      _showInteractionMenu(tappedObject, worldPosition);
    } else {
      // No object tapped, move character to that position
      _characterComponent.moveTo(Offset(worldPosition.x, worldPosition.y));
      _selectedObject = null;
    }
  }
  
  @override
  void onHoverEnter(PointerHoverEvent event) {
    final hoverPosition = event.localPosition;
    
    // Check if hovering over an object
    for (final entry in _objectComponents.entries) {
      final component = entry.value;
      final object = component.object;
      
      if (object.containsPoint(Offset(hoverPosition.x, hoverPosition.y))) {
        component.setHovered(true);
        _hoveredObject = component;
        break;
      }
    }
  }
  
  @override
  void onHoverLeave(PointerHoverEvent event) {
    // Clear hover state
    if (_hoveredObject != null) {
      _hoveredObject!.setHovered(false);
      _hoveredObject = null;
    }
  }
  
  @override
  void onHoverMove(PointerHoverEvent event) {
    final hoverPosition = event.localPosition;
    
    // Clear previous hover state
    if (_hoveredObject != null) {
      _hoveredObject!.setHovered(false);
      _hoveredObject = null;
    }
    
    // Check if hovering over an object
    for (final entry in _objectComponents.entries) {
      final component = entry.value;
      final object = component.object;
      
      if (object.containsPoint(Offset(hoverPosition.x, hoverPosition.y))) {
        component.setHovered(true);
        _hoveredObject = component;
        break;
      }
    }
  }
  
  /// Shows an interaction menu for the selected object
  void _showInteractionMenu(InteractiveObject object, Vector2 position) {
    // Create an interaction overlay at the tap position
    _interactionOverlay = InteractionOverlay(
      game: game,
      object: object,
      position: position,
      onClose: _closeInteractionOverlay,
    );
    
    add(_interactionOverlay!);
  }
  
  /// Closes the current interaction overlay
  void _closeInteractionOverlay() {
    if (_interactionOverlay != null) {
      _interactionOverlay!.removeFromParent();
      _interactionOverlay = null;
    }
  }
}