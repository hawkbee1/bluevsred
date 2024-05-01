import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'persistence/local_storage_player_progress_persistence.dart';
import 'package:flutter/foundation.dart';

import 'persistence/player_progress_persistence.dart';

part 'player_progress.g.dart';
/// Encapsulates the player's progress.
@riverpod
class PlayerProgress extends _$PlayerProgress {
  PlayerProgress({PlayerProgressPersistence? store})
      : _store = store ?? LocalStoragePlayerProgressPersistence() {
    getLatestFromStore();
  }

  @override
  List<int> build() => [];

  /// TODO: If needed, replace this with some other mechanism for saving
  ///       the player's progress. Currently, this uses the local storage
  ///       (i.e. NSUserDefaults on iOS, SharedPreferences on Android
  ///       or local storage on the web).
  final PlayerProgressPersistence _store;


  /// Fetches the latest data from the backing persistence store.
  Future<void> getLatestFromStore() async {
    final levelsFinished = await _store.getFinishedLevels();
    if (!listEquals(state, levelsFinished)) {
      state = levelsFinished;
    }
  }

  /// Resets the player's progress so it's like if they just started
  /// playing the game for the first time.
  void reset() {
    _store.reset();
    state.clear();
  }

  /// Registers [level] as reached.
  ///
  /// If this is higher than [highestLevelReached], it will update that
  /// value and save it to the injected persistence store.
  void setLevelFinished(int level, int time) {
    if (level < state.length - 1) {
      final currentTime = state[level - 1];
      if (time < currentTime) {
        state[level - 1] = time;
        unawaited(_store.saveLevelFinished(level, time));
      }
    } else {
      state.add(time);
      unawaited(_store.saveLevelFinished(level, time));
    }
  }
}

