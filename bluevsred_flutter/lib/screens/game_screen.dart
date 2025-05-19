import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../game/blue_vs_red_game.dart';
import '../models/skill.dart';
import '../utils/game_persistence.dart';

/// The main game screen that displays the Flame game and UI overlays
class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  bool _showSkillsPanel = false;
  bool _showActionPanel = false;
  bool _isSaving = false;
  bool _isLoading = false;
  String? _statusMessage;

  @override
  Widget build(BuildContext context) {
    final game = Provider.of<BlueVsRedGame>(context);

    return Scaffold(
      body: Stack(
        children: [
          // The Flame game
          GameWidget(
            game: game,
            loadingBuilder: (context) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorBuilder: (context, error) => Center(
              child: Text(
                'Error loading game: $error',
                style: const TextStyle(color: Colors.red, fontSize: 20),
              ),
            ),
          ),

          // Skills button
          Positioned(
            top: 20,
            right: 20,
            child: FloatingActionButton(
              heroTag: 'skillsBtn',
              mini: true,
              child: const Icon(Icons.assessment),
              onPressed: () {
                setState(() {
                  _showSkillsPanel = !_showSkillsPanel;
                  if (_showSkillsPanel) {
                    _showActionPanel = false;
                  }
                });
              },
            ),
          ),

          // Actions button
          Positioned(
            top: 20,
            right: 80,
            child: FloatingActionButton(
              heroTag: 'actionsBtn',
              mini: true,
              child: const Icon(Icons.menu),
              onPressed: () {
                setState(() {
                  _showActionPanel = !_showActionPanel;
                  if (_showActionPanel) {
                    _showSkillsPanel = false;
                  }
                });
              },
            ),
          ),

          // Status message
          if (_statusMessage != null)
            Positioned(
              top: 70,
              left: 20,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  _statusMessage!,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),

          // Skills panel
          if (_showSkillsPanel)
            Positioned(
              top: 70,
              right: 20,
              child: _buildSkillsPanel(game),
            ),

          // Actions panel
          if (_showActionPanel)
            Positioned(
              top: 70,
              right: 20,
              child: _buildActionsPanel(game),
            ),
        ],
      ),
    );
  }

  Widget _buildSkillsPanel(BlueVsRedGame game) {
    final skills = game.character.skills.values.toList();

    // Group skills by parent
    final rootSkills = skills.where((s) => s.parentSkill == null).toList();
    
    return Container(
      width: 300,
      height: 500,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Skills - ${game.character.name}',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                backgroundColor: game.character.chosenColor,
                radius: 14,
              ),
            ],
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: rootSkills.length,
              itemBuilder: (context, index) {
                final rootSkill = rootSkills[index];
                return _buildSkillTreeItem(rootSkill, skills, game);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillTreeItem(Skill skill, List<Skill> allSkills, BlueVsRedGame game) {
    // Find children skills
    final childSkills = allSkills.where((s) => 
      s.parentSkill != null && s.parentSkill!.id == skill.id).toList();
    
    // Calculate bonus
    final bonus = game.character.getSkillBonus(skill.name);
    final hasBonus = bonus > 1.0;
    
    return ExpansionTile(
      title: Row(
        children: [
          Expanded(
            child: Text(
              skill.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: hasBonus ? game.character.chosenColor : null,
              ),
            ),
          ),
          Text(
            'Level ${skill.level}',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          if (hasBonus)
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Tooltip(
                message: 'Color Bonus: x${bonus.toStringAsFixed(1)}',
                child: Icon(
                  Icons.star,
                  color: game.character.chosenColor,
                  size: 16,
                ),
              ),
            ),
        ],
      ),
      subtitle: Text(
        skill.description,
        style: TextStyle(
          fontSize: 12,
          color: Colors.grey[600],
        ),
      ),
      children: [
        ...childSkills.map((child) => Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: _buildSkillTreeItem(child, allSkills, game),
        )),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
          child: LinearProgressIndicator(
            value: skill.experience / ((skill.level + 1) * 100),
            backgroundColor: Colors.grey[300],
            color: game.character.chosenColor,
          ),
        ),
      ],
    );
  }

  Widget _buildActionsPanel(BlueVsRedGame game) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Actions',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.save),
            title: const Text('Save Game'),
            dense: true,
            enabled: !_isSaving && !_isLoading,
            onTap: () => _saveGame(game),
          ),
          ListTile(
            leading: const Icon(Icons.restore),
            title: const Text('Load Game'),
            dense: true,
            enabled: !_isSaving && !_isLoading,
            onTap: () => _loadGame(game),
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            dense: true,
          ),
          const ListTile(
            leading: Icon(Icons.help),
            title: Text('Help'),
            dense: true,
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Exit Game'),
            dense: true,
            onTap: () => _exitGame(),
          ),
        ],
      ),
    );
  }

  /// Save the current game state
  Future<void> _saveGame(BlueVsRedGame game) async {
    setState(() {
      _isSaving = true;
      _statusMessage = 'Saving game...';
    });

    try {
      final success = await GamePersistenceService.saveGame(game.character);
      
      setState(() {
        _isSaving = false;
        _statusMessage = success ? 'Game saved successfully!' : 'Failed to save game.';
      });
      
      // Show notification in the game
      game.showNotification(
        success ? 'Game saved successfully!' : 'Failed to save game.',
        color: success ? Colors.green : Colors.red,
      );
      
      // Clear status message after a delay
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          setState(() {
            _statusMessage = null;
          });
        }
      });
    } catch (e) {
      setState(() {
        _isSaving = false;
        _statusMessage = 'Error saving game: $e';
      });
      
      game.showNotification('Error saving game', color: Colors.red);
    }
  }

  /// Load a saved game
  Future<void> _loadGame(BlueVsRedGame game) async {
    setState(() {
      _isLoading = true;
      _statusMessage = 'Loading saved game...';
    });

    try {
      final savedCharacter = await GamePersistenceService.loadGame();
      
      if (savedCharacter != null) {
        // Update the character in the game
        game.character = savedCharacter;
        
        setState(() {
          _isLoading = false;
          _statusMessage = 'Game loaded successfully!';
        });
        
        // Show notification in the game
        game.showNotification('Game loaded successfully!', color: Colors.green);
      } else {
        setState(() {
          _isLoading = false;
          _statusMessage = 'No saved game found.';
        });
        
        game.showNotification('No saved game found', color: Colors.orange);
      }
      
      // Clear status message after a delay
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) {
          setState(() {
            _statusMessage = null;
          });
        }
      });
    } catch (e) {
      setState(() {
        _isLoading = false;
        _statusMessage = 'Error loading game: $e';
      });
      
      game.showNotification('Error loading game', color: Colors.red);
    }
  }

  /// Exit the game
  void _exitGame() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit Game'),
        content: const Text('Do you want to save before exiting?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); // Close dialog
              Navigator.pop(context); // Return to character creation
            },
            child: const Text('Exit without saving'),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.pop(context); // Close dialog
              
              // Save game first
              final game = Provider.of<BlueVsRedGame>(context, listen: false);
              await _saveGame(game);
              
              if (mounted) {
                Navigator.pop(context); // Return to character creation
              }
            },
            child: const Text('Save and exit'),
          ),
        ],
      ),
    );
  }
}