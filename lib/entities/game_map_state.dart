import 'package:mobx/mobx.dart';

part 'game_map_state.g.dart';

class GameMapState extends _GameMapStateBase with _$GameMapState {}

abstract class _GameMapStateBase with Store {
  @observable
  double scale = 1;
}
