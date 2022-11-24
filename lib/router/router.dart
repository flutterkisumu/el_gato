import 'package:auto_route/auto_route.dart';
import 'package:el_gato/ui/auth/login_page.dart';
import 'package:el_gato/ui/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: LoginPage,
    ),
  ],
)
class $AppRouter {}
