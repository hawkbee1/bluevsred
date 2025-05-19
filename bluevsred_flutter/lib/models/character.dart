import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'skill.dart';

/// Represents the player character in the game
class Character extends Equatable {
  /// Unique identifier for the character
  final String id;
  
  /// Name of the character
  final String name;
  
  /// The color chosen by the player, affects skill bonuses
  final Color chosenColor;
  
  /// Map of skills possessed by the character
  final Map<String, Skill> skills;

  /// Creates a new character
  const Character({
    required this.id,
    required this.name,
    required this.chosenColor,
    required this.skills,
  });

  /// Creates a new character with a generated UUID
  factory Character.create({
    required String name,
    required Color chosenColor,
    Map<String, Skill>? skills,
  }) {
    return Character(
      id: const Uuid().v4(),
      name: name,
      chosenColor: chosenColor,
      skills: skills ?? {},
    );
  }

  /// Returns a copy of this character with the specified fields updated
  Character copyWith({
    String? name,
    Color? chosenColor,
    Map<String, Skill>? skills,
  }) {
    return Character(
      id: id,
      name: name ?? this.name,
      chosenColor: chosenColor ?? this.chosenColor,
      skills: skills ?? this.skills,
    );
  }

  /// Returns the bonus multiplier for a skill based on the chosen color
  double getSkillBonus(String skillName) {
    // Define color-specific bonuses
    // Red is good for physical/combat skills
    // Blue is good for mental/technical skills
    // Green is good for survival/nature skills
    // Each bonus is between 1.0 and 1.5
    final lowerSkillName = skillName.toLowerCase();

    if (chosenColor == Colors.red) {
      if (['strength', 'combat', 'fitness', 'crafting'].contains(lowerSkillName)) {
        return 1.5;
      }
    } else if (chosenColor == Colors.blue) {
      if (['intelligence', 'technology', 'logic', 'memory'].contains(lowerSkillName)) {
        return 1.5;
      }
    } else if (chosenColor == Colors.green) {
      if (['survival', 'cooking', 'health', 'nature'].contains(lowerSkillName)) {
        return 1.5;
      }
    }
    
    // Default bonus
    return 1.0;
  }

  /// Improves a skill and all its parent skills
  Character improveSkill(String skillId, double experiencePoints) {
    final Map<String, Skill> updatedSkills = Map.from(skills);
    Skill? currentSkill = updatedSkills[skillId];
    
    // If skill doesn't exist, do nothing
    if (currentSkill == null) return this;
    
    // Apply bonus based on chosen color
    final bonus = getSkillBonus(currentSkill.name);
    final adjustedExp = experiencePoints * bonus;
    
    // Update the skill
    updatedSkills[skillId] = currentSkill.addExperience(adjustedExp);
    
    // Update all parent skills with half the experience
    var parentSkill = currentSkill.parentSkill;
    double parentExp = adjustedExp / 2;
    
    while (parentSkill != null) {
      final parent = updatedSkills[parentSkill.id];
      if (parent != null) {
        updatedSkills[parent.id] = parent.addExperience(parentExp);
        parentSkill = parent.parentSkill;
        parentExp /= 2; // Reduce experience for each level up the tree
      } else {
        break;
      }
    }
    
    return copyWith(skills: updatedSkills);
  }

  @override
  List<Object?> get props => [id, name, chosenColor, skills];
}