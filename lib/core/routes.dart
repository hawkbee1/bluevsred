// Routes class is created by you.
import 'package:bluevsred/pages/board_page.dart';
import 'package:bluevsred/pages/gdpr_settings_page.dart';
import 'package:bluevsred/pages/login_page.dart';
import 'package:bluevsred/pages/gdpr_landing_page.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoute(SailorRoute(
      name: "/LoginPage",
      builder: (context, args, params) {
        return LoginPage();
      },
    ));
    sailor.addRoute(SailorRoute(
      name: "/GdprLandingPage",
      builder: (context, args, params) {
        return GdprLandingPage();
      },
    ));
    sailor.addRoute(SailorRoute(
      name: "/BoardPage",
      builder: (context, args, params) {
        return BoardPage();
      },
    ));
    sailor.addRoute(SailorRoute(
      name: "/GdprSettingsPage",
      builder: (context, args, params) {
        return GdprSettingsPage();
      },
    ));
  }
}
