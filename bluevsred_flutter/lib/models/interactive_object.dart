import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'skill.dart';

/// Types of interactive objects in the game environment
enum InteractiveObjectType {
  bed,
  desk,
  toilet,
  armoryWorkshop,
  fridge,
  oven,
  plates,
  diningArea,
}

/// Represents an object in the environment that the player can interact with
class InteractiveObject extends Equatable {
  /// Unique identifier for the interactive object
  final String id;
  
  /// Name of the object
  final String name;
  
  /// Description of the object
  final String description;
  
  /// Type of the object
  final InteractiveObjectType type;
  
  /// Position of the object in the game world
  final Offset position;
  
  /// Size of the object
  final Size size;
  
  /// Map of actions that can be performed on this object, with required skill IDs
  final Map<String, String> possibleActions;

  /// Creates a new interactive object
  const InteractiveObject({
    required this.id,
    required this.name,
    required this.description,
    required this.type,
    required this.position,
    required this.size,
    required this.possibleActions,
  });

  /// Creates a new interactive object with a generated UUID
  factory InteractiveObject.create({
    required String name,
    required String description,
    required InteractiveObjectType type,
    required Offset position,
    required Size size,
    required Map<String, String> possibleActions,
  }) {
    return InteractiveObject(
      id: const Uuid().v4(),
      name: name,
      description: description,
      type: type,
      position: position,
      size: size,
      possibleActions: possibleActions,
    );
  }

  /// Returns a copy of this interactive object with the specified fields updated
  InteractiveObject copyWith({
    String? name,
    String? description,
    InteractiveObjectType? type,
    Offset? position,
    Size? size,
    Map<String, String>? possibleActions,
  }) {
    return InteractiveObject(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      type: type ?? this.type,
      position: position ?? this.position,
      size: size ?? this.size,
      possibleActions: possibleActions ?? this.possibleActions,
    );
  }

  /// Checks if the given point is inside this object
  bool containsPoint(Offset point) {
    return Rect.fromLTWH(
      position.dx,
      position.dy,
      size.width,
      size.height,
    ).contains(point);
  }

  @override
  List<Object?> get props => [id, name, description, type, position, size, possibleActions];
}