import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/character.dart';
import '../models/skill.dart';

/// Service for saving and loading game data
class GamePersistenceService {
  /// Key for storing the game save in SharedPreferences
  static const String _saveKey = 'bluevsred_save';
  
  /// Saves the current game state
  static Future<bool> saveGame(Character character) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      
      // Convert skills map to a serializable format
      final serializedSkills = <String, Map<String, dynamic>>{};
      
      for (final entry in character.skills.entries) {
        serializedSkills[entry.key] = _serializeSkill(entry.value);
      }
      
      final save = {
        'character': {
          'id': character.id,
          'name': character.name,
          'chosenColor': {
            'r': character.chosenColor.red,
            'g': character.chosenColor.green,
            'b': character.chosenColor.blue,
            'a': character.chosenColor.alpha,
          },
          'skills': serializedSkills,
        },
        'timestamp': DateTime.now().toIso8601String(),
      };
      
      final saveJson = jsonEncode(save);
      return await prefs.setString(_saveKey, saveJson);
    } catch (e) {
      print('Error saving game: $e');
      return false;
    }
  }
  
  /// Loads the saved game state
  static Future<Character?> loadGame() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final saveJson = prefs.getString(_saveKey);
      
      if (saveJson == null) {
        return null;
      }
      
      final save = jsonDecode(saveJson) as Map<String, dynamic>;
      final characterData = save['character'] as Map<String, dynamic>;
      
      // First pass: create skill objects without parent references
      final skills = <String, Skill>{};
      final serializedSkills = characterData['skills'] as Map<String, dynamic>;
      
      for (final entry in serializedSkills.entries) {
        final skillData = entry.value as Map<String, dynamic>;
        
        skills[entry.key] = Skill(
          id: skillData['id'] as String,
          name: skillData['name'] as String,
          description: skillData['description'] as String,
          level: skillData['level'] as int,
          experience: skillData['experience'] as double,
          parentSkill: null, // Will set in second pass
        );
      }
      
      // Second pass: set parent references
      for (final entry in serializedSkills.entries) {
        final skillData = entry.value as Map<String, dynamic>;
        final parentId = skillData['parentId'] as String?;
        
        if (parentId != null && skills.containsKey(parentId)) {
          skills[entry.key] = skills[entry.key]!.copyWith(
            parentSkill: skills[parentId],
          );
        }
      }
      
      // Recreate the color
      final colorData = characterData['chosenColor'] as Map<String, dynamic>;
      final color = Color.fromARGB(
        colorData['a'] as int,
        colorData['r'] as int,
        colorData['g'] as int,
        colorData['b'] as int,
      );
      
      return Character(
        id: characterData['id'] as String,
        name: characterData['name'] as String,
        chosenColor: color,
        skills: skills,
      );
    } catch (e) {
      print('Error loading game: $e');
      return null;
    }
  }
  
  /// Checks if a saved game exists
  static Future<bool> hasSavedGame() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_saveKey);
  }
  
  /// Deletes the saved game
  static Future<bool> deleteSavedGame() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove(_saveKey);
  }
  
  /// Helper method to serialize a skill
  static Map<String, dynamic> _serializeSkill(Skill skill) {
    return {
      'id': skill.id,
      'name': skill.name,
      'description': skill.description,
      'level': skill.level,
      'experience': skill.experience,
      'parentId': skill.parentSkill?.id,
    };
  }
}