import 'package:get/get.dart';
import 'package:getx_translation/home_page.dart';
import 'package:getx_translation/second_page.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.SECONDPAGE,
      page: () => SecondPage(),
    ),
  ];
}
