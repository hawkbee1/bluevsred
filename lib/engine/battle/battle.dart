import 'package:endless_runner/engine/battle_map/battle_map.dart';
import 'package:endless_runner/engine/troops/troop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle.freezed.dart';
part 'battle.g.dart';

@freezed
class Battle with _$Battle {
  Battle._();
  factory Battle.def(
      {required DateTime startDate, required BattleMap battleMap}) = _Battle;
  factory Battle() {
    return _Battle(startDate: _dateTimeNow(), battleMap: const BattleMap());
  }
  final Set<Troop> troops = {};
  static DateTime _dateTimeNow() {
    return DateTime.now().toUtc();
  }

  factory Battle.fromJson(Map<String, Object?> json) => _$BattleFromJson(json);

  void addTroops({required List<Troop> newTroops}) {
    troops.addAll(newTroops);
  }
}
