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

In Blue vs Red, players create a character by choosing a color (the "chosenColor"), which grants specific bonuses to certain skills. The character interacts with various objects in a room environment, including:

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

## Testing Approach

Blue vs Red follows a comprehensive testing strategy to ensure quality and reliability:

### Unit Testing
All models, providers, and game mechanics are thoroughly unit tested to verify correct behavior in isolation.

### Widget Testing
UI components are tested with widget tests, including visual verification for different screen sizes.

### Integration Testing
End-to-end tests ensure that game flows work correctly from character creation to skill progression.

### Code Coverage
We maintain 100% code coverage as a requirement for all new code. Coverage is verified using the following workflow:

1. Generate coverage data:
```bash
flutter test --coverage
```

2. Analyze coverage with lcov:
```bash
# List coverage by file
lcov --list coverage/lcov.info

# View summary statistics
lcov --summary coverage/lcov.info
```

3. Generate and view HTML reports:
```bash
# Generate HTML report
genhtml coverage/lcov.info -o coverage/html

# Open the report (Linux)
xdg-open coverage/html/index.html

# Open the report (macOS)
open coverage/html/index.html
```

4. Identify uncovered lines in the lcov.info file:
```bash
# Find lines with zero coverage (DA:line_number,0)
grep "DA:[0-9]*,0" coverage/lcov.info
```

5. Write additional tests targeting uncovered lines until 100% coverage is achieved