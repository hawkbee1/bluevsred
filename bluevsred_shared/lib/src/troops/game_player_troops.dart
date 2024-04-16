import 'package:bluevsred_shared/bluesvsred_shared.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_player_troops.freezed.dart';

@freezed
class GamePlayerTroops with _$GamePlayerTroops {
  GamePlayerTroops._();
  factory GamePlayerTroops({required Set<Troop> troops}) = _GamePlayerTroops;


}
