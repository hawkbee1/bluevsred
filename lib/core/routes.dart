// Routes class is created by you.
import 'package:bluevsred/pages/board_page.dart';
import 'package:bluevsred/pages/gdpr_settings_page.dart';
import 'package:bluevsred/pages/login_page.dart';
import 'package:bluevsred/pages/gdpr_landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:sailor/sailor.dart';

// ignore: avoid_classes_with_only_static_members
class Routes {
  static final Sailor sailor = Sailor();

  static void createRoutes() {
    sailor.addRoute(SailorRoute(
      name: '/LoginPage',
      builder: (BuildContext context, BaseArguments args, ParamMap params) {
        return LoginPage();
      },
    ));
    sailor.addRoute(SailorRoute(
      name: '/GdprLandingPage',
      builder: (BuildContext context, BaseArguments args, ParamMap params) {
        return GdprLandingPage();
      },
    ));
    sailor.addRoute(SailorRoute(
      name: '/BoardPage',
      builder: (BuildContext context, BaseArguments args, ParamMap params) {
        return BoardPage();
      },
    ));
    sailor.addRoute(SailorRoute(
      name: '/GdprSettingsPage',
      builder: (BuildContext context, BaseArguments args, ParamMap params) {
        return GdprSettingsPage();
      },
    ));
  }
}
