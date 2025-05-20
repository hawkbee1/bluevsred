Please follow these guidelines for all responses related to my Flutter/Flame game project:

1. Architecture: Always follow clean code principles with proper separation of concerns
2. Components: Use Flame's component-based architecture consistently
3. Game Loop: Consider performance implications in the game loop
4. Testing: Include unit tests for core game mechanics. Widget testing includes widget screenshots for each step and for different screen type (desktop, phone, tablet)
5. Documentation: Add code comments explaining complex logic
6. Iterations: For each new feature, cover design, implementation, check code (flutter analyze), update code until flutter analyze command return no complaint,  testing phases (flutter test), test coverage, update code until test coverae is 100% 
7. File Structure: Follow the aclean code project organization

# AI Workflow for BlueVsRed Flutter Game Development

This document outlines the workflow that Claude should follow for each iteration when helping with the development of the BlueVsRed Flutter game using the Flame engine.

## Initial Assessment

For every request, Claude should:

1. **Understand the Context**: Review the current state of the project and understand which component is being modified or created.
2. **Identify Dependencies**: Determine which files are affected by the requested changes.
3. **Check Architecture Guidelines**: Ensure that any modifications follow the established architecture patterns.

## Implementation Process

### Step 1: Design Phase
- Define the components, classes, and interactions needed
- Identify potential reusable elements
- Determine how the new feature fits within the existing architecture

### Step 2: Implementation Phase
- Write clean, well-documented code
- Follow Flutter and Flame best practices
- Use consistent naming conventions
- Preserve the component-based architecture
- Ensure proper separation of concerns

### Step 3: Testing Considerations
- Note which aspects need testing
- Suggest test cases for new functionality
- Consider edge cases and potential failure points

### Step 4: Documentation
- Add comprehensive comments to code
- Update relevant documentation
- Explain design decisions

## Architecture Guidelines

### Core Principles
1. **Component-Based Design**: Follow Flame's component architecture for game entities.
2. **Clean Separation**: Maintain separation between game logic, rendering, and UI.
3. **State Management**: Use provider pattern for state management.
4. **Immutable Models**: Create immutable model classes with copy methods.

### File Organization
- `models/`: Data structures and business logic
- `components/`: Flame game components
- `game/`: Core game engine classes
- `screens/`: Flutter UI screens
- `utils/`: Helper functions and utilities

### Skill System Rules
1. Using a skill increases its proficiency
2. Skills follow a hierarchical tree structure
3. Improving a skill also increases parent skills in the tree (with diminishing returns)
4. The chosen color provides bonuses to related skills
5. Using a skill increase the chosen color bonus for this skill

## Iteration Checklist

Before completing each iteration, Claude should verify:

- [ ] Code follows Dart and Flutter conventions
- [ ] New features integrate properly with existing components
- [ ] Documentation is complete and accurate
- [ ] Any new dependencies are properly included
- [ ] Performance considerations are addressed
- [ ] Code is optimized for both mobile and desktop platforms

## Common Patterns to Follow

1. Use `copyWith` for updating immutable models
2. Implement proper lifecycle methods in Flame components
3. Separate rendering logic from game state logic
4. Use proper typing throughout the codebase
5. Handle errors gracefully

Please follow these guidelines for all responses related to my Flutter/Flame game project:

1. Architecture: Always follow clean code principles with proper separation of concerns
2. Components: Use Flame's component-based architecture consistently
3. Game Loop: Consider performance implications in the game loop
4. Testing: Include unit tests for core game mechanics. Widget testing includes widget screenshots for each step and for different screen type (desktop, phone, tablet)
5. Documentation: Add code comments explaining complex logic
6. Iterations: For each new feature, cover design, implementation, check code (flutter analyze), update code until flutter analyze command return no complaint,  testing phases (flutter test), test coverage, update code until test coverae is 100% 
7. File Structure: Follow the aclean code project organization

