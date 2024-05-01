// import 'package:bluevsred_shared/src/game_player/game_player.dart';
import 'package:bluevsred_flutter/player/active_game_player.dart';
import 'package:bluevsred_flutter/player/active_game_player_troops.dart';
import 'package:bluevsred_flutter/player/create_player.dart';
import 'package:bluevsred_shared/bluesvsred_shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test/test.dart';


void main() {
  group('player lifecycle', () {
        test('creates a game player with the given name', () async {
      final container = ProviderContainer();
      const expectedName = 'test player';
      await createGamePlayer(gamePlayerName: expectedName, container: container);
      await expectLater(container.read(activeGamePlayerProvider(expectedName).future), completion(GamePlayer(name: expectedName)));
      // await container.pump();
      // container.listen(gamePlayer, (previous, next) {
      //   expect(next!.name, equals(expectedName));
      // });
      // expect(gamePlayer.name, equals(expectedName));
    });

    test('adds a commander troop to the game player', () async {
      final container = ProviderContainer();
      const expectedName = 'test player';
      await createGamePlayer(gamePlayerName: expectedName, container: container);
      final troopsProvider = activeGamePlayerTroopsProvider(troops: const {});
      final troops = container.read(troopsProvider);
      // troops.when
      // expect(troops.length, equals(1));
      // expect(troops[0].troopDb.troopType, equals(TroopType.commander));
      // expect(troops[0].gamePlayer.name, equals(expectedName));
    });

    // test('when game player is created, his first commander is created', () {
    //   bool isPlayerCommanderCreated =  false;
    //   final  gamePlayer = GamePlayer(name: gamePlayer1Name);
    //   isPlayerCommanderCreated =  true;

    // } );
    // test('when game player is created, its name must be unique', () {
    //   final  gamePlayer = GamePlayer(name: gamePlayer1Name);
    // } );
  });
}
