import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Enum representing the different game states
enum GameStatus {
  /// Initial state when the game is first loaded
  initial,

  /// Character selection screen
  characterSelection,

  /// Active gameplay
  playing,

  /// Game is paused
  paused,

  /// Game over state
  gameOver,
}

/// Class that holds the game state
class GameState {
  /// Constructor for GameState
  const GameState({this.status = GameStatus.initial, this.selectedColor});

  /// Current game status
  final GameStatus status;

  /// Player's selected color (null if not yet chosen)
  final Color? selectedColor;

  /// Creates a copy of this GameState but with the given fields replaced
  GameState copyWith({
    GameStatus? status,
    Color? selectedColor,
    bool clearSelectedColor = false,
  }) {
    return GameState(
      status: status ?? this.status,
      selectedColor:
          clearSelectedColor ? null : selectedColor ?? this.selectedColor,
    );
  }
}

/// NotifierProvider for managing game state
class GameStateNotifier extends Notifier<GameState> {
  @override
  GameState build() {
    return const GameState();
  }

  /// Update the game status
  void updateGameStatus(GameStatus status) {
    state = state.copyWith(status: status);
  }

  /// Set the player's color choice
  void setPlayerColor(Color color) {
    state = state.copyWith(selectedColor: color);
  }

  /// Reset the game state
  void resetGame() {
    state = const GameState();
  }
}

/// Provider that exposes the GameStateNotifier
final gameStateProvider = NotifierProvider<GameStateNotifier, GameState>(() {
  return GameStateNotifier();
});
