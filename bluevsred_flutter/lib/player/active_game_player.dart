import 'package:bluevsred_shared/bluesvsred_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_game_player.g.dart';

@riverpod
class ActiveGamePlayer extends _$ActiveGamePlayer {
  @override
  Future<GamePlayer> build(String creationName) async {
    return GamePlayer(name: this.creationName);
  }
}
