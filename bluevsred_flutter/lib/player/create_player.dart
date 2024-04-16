import 'package:bluevsred_client/bluevsred_client.dart';
import 'package:bluevsred_flutter/player/active_game_player_troops.dart';
import 'package:bluevsred_shared/bluesvsred_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'active_game_player.dart';

Future<void> createGamePlayer(
    {required String gamePlayerName,
    required ProviderContainer container}) async {
  final gamePlayerProvider = activeGamePlayerProvider(gamePlayerName);
  // container.listen(gamePlayerProvider, (previous, next) {});
  final troopsProvider = activeGamePlayerTroopsProvider(troops: const {});
  // container.listen(troopsProvider, (previous, next) {});

  container.read(troopsProvider).value!.addTroops(newTroops: [
    Troop(
        troopDb: TroopDb(troopType: TroopType.commander, actionPoints: 10),
        gamePlayer: container.read(gamePlayerProvider).value!),
  ]);
}
