import 'package:bluevsred_flutter/models/character.dart';
import 'package:bluevsred_flutter/models/skill.dart';
import 'package:flutter/material.dart';
import 'package:test/test.dart';

void main() {
  group('Character', () {
    late Skill rootSkill;
    late Skill childSkill;
    late Character character;
    
    setUp(() {
      // Create a simple skill tree
      rootSkill = Skill.create(
        name: 'Physical',
        description: 'Physical abilities',
      );
      
      childSkill = Skill.create(
        name: 'Strength',
        description: 'Raw power',
        parentSkill: rootSkill,
      );
      
      // Create a character with these skills
      character = Character.create(
        name: 'Test Character',
        chosenColor: Colors.red,
        skills: {
          rootSkill.id: rootSkill,
          childSkill.id: childSkill,
        },
      );
    });
    
    test('should initialize with correct values', () {
      expect(character.name, equals('Test Character'));
      expect(character.chosenColor, equals(Colors.red));
      expect(character.skills.length, equals(2));
    });
    
    test('should provide correct skill bonuses based on color', () {
      // Red character should get bonus to strength
      final strengthBonus = character.getSkillBonus('Strength');
      expect(strengthBonus, equals(1.5));
      
      // But not to intelligence
      final intelligenceBonus = character.getSkillBonus('Intelligence');
      expect(intelligenceBonus, equals(1.0));
      
      // Change color to blue
      character = character.copyWith(chosenColor: Colors.blue);
      
      // Blue character should not get bonus to strength
      final newStrengthBonus = character.getSkillBonus('Strength');
      expect(newStrengthBonus, equals(1.0));
    });
    
    test('should improve skills correctly', () {
      // Improve child skill
      final updatedCharacter = character.improveSkill(childSkill.id, 50.0);
      
      // Child skill should be improved
      final updatedChildSkill = updatedCharacter.skills[childSkill.id]!;
      expect(updatedChildSkill.experience, equals(50.0 * 1.5)); // With red bonus
      
      // Parent skill should be improved with half the experience
      final updatedRootSkill = updatedCharacter.skills[rootSkill.id]!;
      expect(updatedRootSkill.experience, equals(50.0 * 1.5 / 2));
    });
    
    test('should level up skills based on experience', () {
      // Add enough experience to level up
      final updatedCharacter = character.improveSkill(childSkill.id, 100.0);
      
      // Child skill should be level 1 now
      final updatedChildSkill = updatedCharacter.skills[childSkill.id]!;
      expect(updatedChildSkill.level, equals(1));
      
      // Parent skill shouldn't level up yet
      final updatedRootSkill = updatedCharacter.skills[rootSkill.id]!;
      expect(updatedRootSkill.level, equals(0));
    });
  });
}