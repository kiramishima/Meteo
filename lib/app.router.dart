import 'package:meteo/pages/secret.dart';
import 'package:sailor/sailor.dart';

class Routes {
  static final sailor = Sailor();

  static void createRoutes() {
    sailor.addRoute(
      SailorRoute(
        name: "/secret",
        builder: (context, args, params) => SecretPage(),
        params: [
          SailorParam<int>(
            name: 'id',
          ),
        ],
      )
    );
  }
}