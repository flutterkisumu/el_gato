// ignore_for_file: public_member_api_docs
import 'package:auto_route/auto_route.dart';
import 'package:el_gato/ui/auth/create_account_page.dart';
import 'package:el_gato/ui/auth/login_page.dart';
import 'package:el_gato/ui/main_home/main_home_page.dart';
import 'package:el_gato/ui/splash/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      page: LoginPage,
    ),
    AutoRoute(
      page: CreateAccountPage,
    ),
    AutoRoute(
      page: MainHomePage,
    ),
  ],
)
class $AppRouter {}
