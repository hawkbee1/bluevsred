import 'package:endless_runner/engine/game_player/game_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'troop.freezed.dart';
part 'troop.g.dart';

@freezed
abstract class Troop with _$Troop {
  factory Troop.def({required String id, required String path, required GamePlayer gamePlayer}) = _Troop;
  factory Troop({required GamePlayer gamePlayer}) => _Troop(id: _uuid(), path: 'testing_troop.png', gamePlayer: gamePlayer);
  factory Troop.fromJson(Map<String, Object?> json) => _$TroopFromJson(json);
  static String _uuid() {
    const generator = Uuid();
    return generator.v4();
  }
}
