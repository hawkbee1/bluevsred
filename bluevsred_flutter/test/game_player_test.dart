// import 'package:bluevsred_shared/src/game_player/game_player.dart';
import 'package:bluevsred_flutter/player/active_game_player.dart';
import 'package:test/test.dart';

import 'provider_container.dart';

void main() {
  group('player lifecycle', () {
    test('When a player is created its name begin by given string ', () async {
      final container = createContainer();
      const expectedName = 'given name';
      var state = container.read(activeGamePlayerProvider(expectedName).notifier);
      expect((await state.future).name, equals(expectedName));
    });

    test('when game player is created, he gets a commander troop', () {
      // Here comes the need of state management system
      bool isPlayerInTheList = false;

      /// check player is not in inital list
      expect(isPlayerInTheList, equals(false));

      /// Add new player to the list
      isPlayerInTheList = true;
      expect(isPlayerInTheList, equals(true));
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
