import 'package:bluevsred_client/bluevsred_client.dart';
import 'package:bluevsred_shared/bluesvsred_shared.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../game_player/game_player.dart';

part 'troop.freezed.dart';

@freezed
class Troop with _$Troop {
  Troop._();
  factory Troop({
    required TroopDb troopDb,
    required GamePlayer gamePlayer,
  }) = _Troop;
}
