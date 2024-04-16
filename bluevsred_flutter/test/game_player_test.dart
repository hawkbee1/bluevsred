// import 'package:bluevsred_shared/src/game_player/game_player.dart';
import 'package:bluevsred_client/bluevsred_client.dart';
import 'package:bluevsred_flutter/player/active_game_player.dart';
import 'package:bluevsred_flutter/player/active_game_player_troops.dart';
import 'package:bluevsred_flutter/player/create_player.dart';
import 'package:bluevsred_shared/bluesvsred_shared.dart';
import 'package:test/test.dart';

import 'provider_container.dart';

void main() {
  group('player lifecycle', () {
    test('When a player is created its name begin by given string ', () async {
      final container = createContainer();
      const expectedName = 'given name';
      var state =
          container.read(activeGamePlayerProvider(expectedName).notifier);
      expect((await state.future).name, equals(expectedName));
    });

    test('when game player is created, he gets a commander troop', () async {
      final container = createContainer();
      const expectedName = 'given name';
      final troopsProvider = activeGamePlayerTroopsProvider(troops: {});
      container.listen(troopsProvider, (previous, next) {});
      expectLater(container.read(troopsProvider.future), completion({}));

      createGamePlayer(gamePlayerName: expectedName, container: container);
      expectLater(
          container.read(troopsProvider.future),
          completion({
            Troop(
                troopDb:
                    TroopDb(troopType: TroopType.commander, actionPoints: 10),
                gamePlayer: GamePlayer(name: expectedName))
          }));
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
