import 'package:bluevsred_shared/src/game_player/game_player.dart';
import 'package:test/test.dart';

void main() {
  final String gamePlayer1Name = 'first test player';
  final List<GamePlayer> initialPlayerList = [GamePlayer(name: 'initial player 1'), GamePlayer(name: 'initial player 2'), GamePlayer(name: 'initial player 3'), GamePlayer(name: 'initial player 4'),];
  group('player lifecycle', () {
        test('when game player is created, he appear in the player list', () {
          // Here comes the need of state management system
      bool isPlayerInTheList =  false;
      /// check player is not in inital list
      expect(isPlayerInTheList, equals(true));
/// Add new player to the list
      isPlayerInTheList =  true;
      expect(isPlayerInTheList, equals(true));

    } );

    test('when game player is created, his first commander is created', () {
      bool isPlayerCommanderCreated =  false;
      final  gamePlayer = GamePlayer(name: gamePlayer1Name);
      isPlayerCommanderCreated =  true;

    } );
    test('when game player is created, its name must be unique', () {
      final  gamePlayer = GamePlayer(name: gamePlayer1Name); 
    } );
  });
}
