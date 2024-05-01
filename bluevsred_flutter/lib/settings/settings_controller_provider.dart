import 'package:bluevsred_flutter/settings/settings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final settingsControllerProvider = Provider<SettingsController>((ref) {
  return SettingsController();
});
