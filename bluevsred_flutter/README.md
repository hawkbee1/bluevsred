# bluevsred_flutter

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
# Blue vs Red

A character development game built with Flutter and Flame where your color choice determines your strengths and gameplay style.

## Game Overview

In Blue vs Red, players create a character by choosing a color (the "choosenColor"), which grants specific bonuses to certain skills. The character interacts with various objects in a room environment, including:

- Bed
- Desk
- Toilets
- Armory workshop
- Kitchen equipment (fridge, oven, plates)
- Dining area

## Game Mechanics

### Character Creation
- Players select a primary color for their character
- Each color provides unique bonuses to different skill categories

### Skill System
- Actions require the use of specific skills
- Using a skill increases its proficiency
- Skills follow a hierarchical tree structure
- Improving a skill also increases parent skills in the tree
- The chosen color provides bonuses to related skills

### Environment Interaction
- Players navigate their character around the room
- Interacting with objects triggers skill-based actions
- Successful actions yield rewards and skill improvements
- The game tracks skill progression and character development over time

## How to Play

1. Create your character by selecting a color
2. Explore the room environment
3. Interact with objects to perform actions
4. Develop skills based on your actions
5. Optimize your gameplay based on your color's bonuses

## Development

This game is developed using Flutter and the Flame game engine, following clean code architecture principles and test-driven development. State management is handled using Riverpod.