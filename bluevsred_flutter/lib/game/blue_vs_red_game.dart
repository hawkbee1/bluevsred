import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import '../components/room_component.dart';
import '../models/character.dart';
import '../models/interactive_object.dart';
import '../models/skill.dart';

/// Main game class that handles the game loop and rendering
class BlueVsRedGame extends FlameGame with HasTappables {
  /// The player character
  late Character character;
  
  /// List of interactive objects in the room
  final List<InteractiveObject> interactiveObjects = [];
  
  /// Flag to track if the game has been initialized
  bool _isInitialized = false;

  /// Creates a new game instance
  BlueVsRedGame();
  
  @override
  Future<void> onLoad() async {
    await super.onLoad();
    
    if (!_isInitialized) {
      await _initializeGame();
    }
    
    // Add the room component which manages all game objects
    add(RoomComponent(game: this));
  }
  
  /// Cleanup resources when the game is disposed
  void onDispose() {
    // Add any cleanup code here
  }
  
  /// Initializes the game with default objects and skills
  Future<void> _initializeGame() async {
    _createDefaultSkills();
    _createRoomObjects();
    _isInitialized = true;
  }
  
  /// Creates the default skill tree for the player
  void _createDefaultSkills() {
    // Root skills
    final physicalSkill = Skill.create(
      name: 'Physical',
      description: 'Physical abilities and strength',
    );
    
    final mentalSkill = Skill.create(
      name: 'Mental',
      description: 'Mental abilities and intelligence',
    );
    
    final survivalSkill = Skill.create(
      name: 'Survival',
      description: 'Survival abilities and adaptability',
    );
    
    // Physical branch
    final strengthSkill = Skill.create(
      name: 'Strength',
      description: 'Raw physical power',
      parentSkill: physicalSkill,
    );
    
    final fitnessSkill = Skill.create(
      name: 'Fitness',
      description: 'Overall physical condition',
      parentSkill: physicalSkill,
    );
    
    final combatSkill = Skill.create(
      name: 'Combat',
      description: 'Fighting abilities',
      parentSkill: physicalSkill,
    );
    
    // Mental branch
    final intelligenceSkill = Skill.create(
      name: 'Intelligence',
      description: 'Problem-solving and learning',
      parentSkill: mentalSkill,
    );
    
    final technologySkill = Skill.create(
      name: 'Technology',
      description: 'Understanding and using technology',
      parentSkill: mentalSkill,
    );
    
    final craftingSkill = Skill.create(
      name: 'Crafting',
      description: 'Creating and repairing items',
      parentSkill: mentalSkill,
    );
    
    // Survival branch
    final healthSkill = Skill.create(
      name: 'Health',
      description: 'Physical well-being',
      parentSkill: survivalSkill,
    );
    
    final cookingSkill = Skill.create(
      name: 'Cooking',
      description: 'Food preparation',
      parentSkill: survivalSkill,
    );
    
    // Initialize character with default skills
    final Map<String, Skill> skills = {
      physicalSkill.id: physicalSkill,
      mentalSkill.id: mentalSkill,
      survivalSkill.id: survivalSkill,
      strengthSkill.id: strengthSkill,
      fitnessSkill.id: fitnessSkill,
      combatSkill.id: combatSkill,
      intelligenceSkill.id: intelligenceSkill,
      technologySkill.id: technologySkill,
      craftingSkill.id: craftingSkill,
      healthSkill.id: healthSkill,
      cookingSkill.id: cookingSkill,
    };
    
    // Character starts with default color blue until player chooses
    character = Character.create(
      name: 'Player',
      chosenColor: Colors.blue,
      skills: skills,
    );
  }
  
  /// Creates the interactive objects in the room
  void _createRoomObjects() {
    // Create bed
    final bed = InteractiveObject.create(
      name: 'Bed',
      description: 'A comfortable bed for resting',
      type: InteractiveObjectType.bed,
      position: const Offset(100, 100),
      size: const Size(200, 100),
      possibleActions: {
        'Sleep': 'health',
        'Make Bed': 'fitness',
      },
    );
    
    // Create desk
    final desk = InteractiveObject.create(
      name: 'Desk',
      description: 'A desk for studying and work',
      type: InteractiveObjectType.desk,
      position: const Offset(350, 100),
      size: const Size(150, 80),
      possibleActions: {
        'Study': 'intelligence',
        'Write': 'technology',
      },
    );
    
    // Create toilet
    final toilet = InteractiveObject.create(
      name: 'Toilet',
      description: 'Bathroom facilities',
      type: InteractiveObjectType.toilet,
      position: const Offset(550, 100),
      size: const Size(80, 80),
      possibleActions: {
        'Use': 'health',
        'Clean': 'fitness',
      },
    );
    
    // Create armory workshop
    final armoryWorkshop = InteractiveObject.create(
      name: 'Armory Workshop',
      description: 'A place to craft and repair weapons',
      type: InteractiveObjectType.armoryWorkshop,
      position: const Offset(100, 250),
      size: const Size(200, 100),
      possibleActions: {
        'Craft': 'crafting',
        'Train': 'combat',
      },
    );
    
    // Create fridge
    final fridge = InteractiveObject.create(
      name: 'Fridge',
      description: 'Stores food items',
      type: InteractiveObjectType.fridge,
      position: const Offset(350, 250),
      size: const Size(100, 100),
      possibleActions: {
        'Get Food': 'cooking',
        'Organize': 'intelligence',
      },
    );
    
    // Create oven
    final oven = InteractiveObject.create(
      name: 'Oven',
      description: 'For cooking meals',
      type: InteractiveObjectType.oven,
      position: const Offset(500, 250),
      size: const Size(100, 80),
      possibleActions: {
        'Cook': 'cooking',
        'Clean': 'health',
      },
    );
    
    // Create plates
    final plates = InteractiveObject.create(
      name: 'Plates',
      description: 'Dinnerware for eating',
      type: InteractiveObjectType.plates,
      position: const Offset(650, 250),
      size: const Size(80, 80),
      possibleActions: {
        'Set Table': 'crafting',
        'Wash': 'health',
      },
    );
    
    // Create dining area
    final diningArea = InteractiveObject.create(
      name: 'Dining Area',
      description: 'A place to eat meals',
      type: InteractiveObjectType.diningArea,
      position: const Offset(400, 400),
      size: const Size(200, 100),
      possibleActions: {
        'Eat': 'health',
        'Socialize': 'technology',
      },
    );
    
    // Add all objects to the list
    interactiveObjects.addAll([
      bed,
      desk,
      toilet,
      armoryWorkshop,
      fridge,
      oven,
      plates,
      diningArea,
    ]);
  }
  
  /// Performs an action on an interactive object
  void performAction(InteractiveObject object, String actionName) {
    final skillId = object.possibleActions[actionName];
    if (skillId == null) return;
    
    // Find the appropriate skill in the character's skill set
    Skill? skill;
    for (final entry in character.skills.entries) {
      if (entry.value.name.toLowerCase() == skillId.toLowerCase()) {
        skill = entry.value;
        break;
      }
    }
    
    if (skill == null) return;
    
    // Improve the skill
    character = character.improveSkill(skill.id, 10.0);
    
    // TODO: Show feedback to the player about the action and skill improvement
  }
  
  /// Sets the player's chosen color
  void setCharacterColor(Color color) {
    character = character.copyWith(chosenColor: color);
  }
}