import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

/// Represents a skill that can be used and improved by the player
class Skill extends Equatable {
  /// Unique identifier for the skill
  final String id;
  
  /// Name of the skill
  final String name;
  
  /// Description of what the skill does
  final String description;
  
  /// Current level of the skill (0-100)
  final int level;
  
  /// Parent skill in the skill tree, null if this is a root skill
  final Skill? parentSkill;
  
  /// The experience points gained for this skill
  final double experience;

  /// Creates a new skill
  const Skill({
    required this.id,
    required this.name,
    required this.description,
    this.level = 0,
    this.parentSkill,
    this.experience = 0.0,
  });

  /// Creates a new skill with a generated UUID
  factory Skill.create({
    required String name,
    required String description,
    int level = 0,
    Skill? parentSkill,
    double experience = 0.0,
  }) {
    return Skill(
      id: const Uuid().v4(),
      name: name,
      description: description,
      level: level,
      parentSkill: parentSkill,
      experience: experience,
    );
  }

  /// Returns a copy of this skill with the specified fields updated
  Skill copyWith({
    String? name,
    String? description,
    int? level,
    Skill? parentSkill,
    double? experience,
  }) {
    return Skill(
      id: id,
      name: name ?? this.name,
      description: description ?? this.description,
      level: level ?? this.level,
      parentSkill: parentSkill ?? this.parentSkill,
      experience: experience ?? this.experience,
    );
  }

  /// Adds experience points to the skill and returns a new skill with updated level
  Skill addExperience(double experiencePoints) {
    final newExperience = experience + experiencePoints;
    // Simple leveling formula - may need adjustment
    final newLevel = (newExperience / 100).floor().clamp(0, 100);
    
    return copyWith(
      experience: newExperience,
      level: newLevel,
    );
  }

  @override
  List<Object?> get props => [id, name, description, level, parentSkill, experience];
}