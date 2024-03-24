import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.freezed.dart';
part 'team.g.dart';

@freezed
class Team with _$Team {
  const factory Team({required String name, required String colorCode}) = _Team;
  factory Team.fromJson(Map<String, Object?> json) => _$TeamFromJson(json);
}
