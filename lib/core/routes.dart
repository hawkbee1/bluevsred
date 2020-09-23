// Routes class is created by you.
import 'package:bluevsred/pages/login_page.dart';
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
  }
}
