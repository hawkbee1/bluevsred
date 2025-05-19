import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../game/blue_vs_red_game.dart';
import '../utils/game_persistence.dart';

/// Screen for creating a new character and selecting a color
class CharacterCreationScreen extends StatefulWidget {
  const CharacterCreationScreen({super.key});

  @override
  State<CharacterCreationScreen> createState() => _CharacterCreationScreenState();
}

class _CharacterCreationScreenState extends State<CharacterCreationScreen> {
  final TextEditingController _nameController = TextEditingController();
  Color _selectedColor = Colors.blue;
  bool _isLoading = false;
  bool _hasSavedGame = false;

  @override
  void initState() {
    super.initState();
    _checkForSavedGame();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
  
  /// Checks if there's a saved game available
  Future<void> _checkForSavedGame() async {
    setState(() {
      _isLoading = true;
    });
    
    final hasSave = await GamePersistenceService.hasSavedGame();
    
    setState(() {
      _hasSavedGame = hasSave;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blue vs Red'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Show continue option if there's a saved game
                  if (_hasSavedGame) ...[
                    Card(
                      margin: const EdgeInsets.only(bottom: 20),
                      color: Colors.blue.shade50,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            const Text(
                              'You have a saved game',
                              style: TextStyle(
                                fontSize: 18, 
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(height: 10),
                            ElevatedButton(
                              onPressed: _loadSavedGame,
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(vertical: 12),
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                              ),
                              child: const Text('Continue Previous Game'),
                            ),
                            const SizedBox(height: 8),
                            TextButton(
                              onPressed: _deleteSavedGame,
                              child: const Text('Delete Saved Game'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Divider(height: 30),
                    const Text(
                      'Or create a new character:',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 20),
                  ],
                  
                  // Create new character section
                  const Text(
                    'Choose your character name:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter your character name',
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Choose your color:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Each color grants different bonuses to specific skills:',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  _buildColorChoice(
                    Colors.red,
                    'Red - Physical Power',
                    'Bonuses to strength, combat, fitness, and crafting',
                  ),
                  const SizedBox(height: 10),
                  _buildColorChoice(
                    Colors.blue,
                    'Blue - Mental Acuity',
                    'Bonuses to intelligence, technology, logic, and memory',
                  ),
                  const SizedBox(height: 10),
                  _buildColorChoice(
                    Colors.green,
                    'Green - Survival Skills',
                    'Bonuses to survival, cooking, health, and nature',
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: _createCharacter,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _selectedColor,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: const Text(
                      'Start Game',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildColorChoice(Color color, String title, String description) {
    final isSelected = _selectedColor == color;

    return InkWell(
      onTap: () {
        setState(() {
          _selectedColor = color;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? color : Colors.grey,
            width: isSelected ? 3 : 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isSelected ? color : Colors.black,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Creates a new character and starts the game
  void _createCharacter() {
    final name = _nameController.text.trim();
    
    if (name.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a character name')),
      );
      return;
    }

    // Update the character in the game
    final game = Provider.of<BlueVsRedGame>(context, listen: false);
    game.character = game.character.copyWith(
      name: name,
      chosenColor: _selectedColor,
    );

    // Delete any existing saved game when starting a new one
    if (_hasSavedGame) {
      GamePersistenceService.deleteSavedGame();
    }

    // Navigate to the game screen
    Navigator.pushReplacementNamed(context, '/game');
  }
  
  /// Loads a saved game and navigates to the game screen
  Future<void> _loadSavedGame() async {
    setState(() {
      _isLoading = true;
    });
    
    try {
      final savedCharacter = await GamePersistenceService.loadGame();
      
      if (savedCharacter != null) {
        // Update the character in the game
        final game = Provider.of<BlueVsRedGame>(context, listen: false);
        game.character = savedCharacter;
        
        // Navigate to the game screen
        if (mounted) {
          Navigator.pushReplacementNamed(context, '/game');
        }
      } else {
        // No saved game found (shouldn't happen, but just in case)
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('No saved game found')),
          );
          setState(() {
            _hasSavedGame = false;
            _isLoading = false;
          });
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading game: $e')),
        );
        setState(() {
          _isLoading = false;
        });
      }
    }
  }
  
  /// Deletes the saved game
  Future<void> _deleteSavedGame() async {
    // Show confirmation dialog
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Saved Game'),
        content: const Text('Are you sure you want to delete your saved game? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
            ),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    
    if (confirmed ?? false) {
      setState(() {
        _isLoading = true;
      });
      
      try {
        final success = await GamePersistenceService.deleteSavedGame();
        
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(success ? 'Saved game deleted' : 'Failed to delete saved game')),
          );
          
          setState(() {
            _hasSavedGame = false;
            _isLoading = false;
          });
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error deleting game: $e')),
          );
          setState(() {
            _isLoading = false;
          });
        }
      }
    }
  }
}