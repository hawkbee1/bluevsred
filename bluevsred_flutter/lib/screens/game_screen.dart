import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../game/blue_vs_red_game.dart';
import '../models/skill.dart';

/// Screen that displays the game and UI overlays
class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final game = Provider.of<BlueVsRedGame>(context);

    return Scaffold(
      body: Stack(
        children: [
          // Game view
          GameWidget(
            game: game,
            overlayBuilderMap: {
              'skill_panel': (context, game) => SkillPanel(game: game as BlueVsRedGame),
            },
            initialActiveOverlays: const ['skill_panel'],
          ),
          
          // Back button
          Positioned(
            top: 40,
            left: 20,
            child: SafeArea(
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Panel that displays the character's skills and stats
class SkillPanel extends StatelessWidget {
  final BlueVsRedGame game;
  
  const SkillPanel({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      width: 250,
      height: MediaQuery.of(context).size.height,
      child: Container(
        color: Colors.black.withOpacity(0.7),
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCharacterInfo(),
              const Divider(color: Colors.white54),
              const Text(
                'Skills',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: _buildSkillList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCharacterInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: game.character.chosenColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    game.character.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    _getColorName(game.character.chosenColor),
                    style: TextStyle(
                      color: game.character.chosenColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSkillList() {
    final skills = game.character.skills.values.toList();
    
    // Sort by root skills first, then by level
    skills.sort((a, b) {
      if (a.parentSkill == null && b.parentSkill != null) return -1;
      if (a.parentSkill != null && b.parentSkill == null) return 1;
      return b.level.compareTo(a.level);
    });

    return ListView.builder(
      itemCount: skills.length,
      itemBuilder: (context, index) {
        final skill = skills[index];
        return _buildSkillItem(skill);
      },
    );
  }

  Widget _buildSkillItem(Skill skill) {
    // Calculate if this skill gets a bonus from the chosen color
    final bonus = game.character.getSkillBonus(skill.name);
    final hasBonus = bonus > 1.0;
    
    return Padding(
      padding: EdgeInsets.only(
        left: skill.parentSkill != null ? 20.0 : 0.0,
        bottom: 8.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  skill.name,
                  style: TextStyle(
                    color: hasBonus ? game.character.chosenColor : Colors.white,
                    fontSize: 16,
                    fontWeight: hasBonus ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
              Text(
                'Lvl ${skill.level}',
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
              if (hasBonus)
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 16,
                ),
            ],
          ),
          const SizedBox(height: 4),
          LinearProgressIndicator(
            value: (skill.experience % 100) / 100,
            backgroundColor: Colors.grey.shade800,
            valueColor: AlwaysStoppedAnimation<Color>(
              hasBonus ? game.character.chosenColor : Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  String _getColorName(Color color) {
    if (color == Colors.red) return 'Red - Physical Power';
    if (color == Colors.blue) return 'Blue - Mental Acuity';
    if (color == Colors.green) return 'Green - Survival Skills';
    return 'Unknown Color';
  }
}