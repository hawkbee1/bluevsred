import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../game/blue_vs_red_game.dart';

/// Screen for creating a new character and selecting a color
class CharacterCreationScreen extends StatefulWidget {
  const CharacterCreationScreen({super.key});

  @override
  State<CharacterCreationScreen> createState() => _CharacterCreationScreenState();
}

class _CharacterCreationScreenState extends State<CharacterCreationScreen> {
  final TextEditingController _nameController = TextEditingController();
  Color _selectedColor = Colors.blue;

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Your Character'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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

    // Navigate to the game screen
    Navigator.pushReplacementNamed(context, '/game');
  }
}