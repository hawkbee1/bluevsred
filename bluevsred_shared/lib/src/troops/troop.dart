import '../game_player/game_player.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';

part 'troop.freezed.dart';
part 'troop.g.dart';

@freezed
abstract class Troop with _$Troop {
  Troop._();
  factory Troop.def(
      {required String id,
      required String path,
      required GamePlayer gamePlayer}) = _Troop;
  factory Troop({required GamePlayer gamePlayer}) =>
      _Troop(id: _uuid(), path: 'testing_troop.png', gamePlayer: gamePlayer);
  factory Troop.fromJson(Map<String, Object?> json,
    SerializationManager serializationManager,
  ) => _$TroopFromJson(json);

  get actionPoints {
    return 30;
  }
  static String _uuid() {
    const generator = Uuid();
    return generator.v4();
  }
}
