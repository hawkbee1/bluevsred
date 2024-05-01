import 'package:bluevsred_shared/bluesvsred_shared.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'active_game_player_troops.g.dart';

@riverpod
class ActiveGamePlayerTroops extends _$ActiveGamePlayerTroops {
  @override
  Future<Set<Troop>> build({required Set<Troop> troops}) async {
    return troops;
  }

  void addTroops({required List<Troop> newTroops}) {
    if (state.value != null) {
      state.value!.addAll(newTroops);
    } else {
      state = AsyncValue.data(newTroops.toSet());
    }
  }
}
