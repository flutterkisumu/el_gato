import 'package:el_gato/router/router.gr.dart';
import 'package:el_gato/style/app_colors.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

/// The main app
class MyCatApp extends StatelessWidget {
  /// the constructor
  MyCatApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: AppColors.darkBlueColor,
          secondary: AppColors.darkCyanColor,
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: AppColors.darkCyanColor,
        brightness: Brightness.dark,
        colorScheme: ColorScheme.dark(
          primary: AppColors.blueColor,
          secondary: AppColors.cyanColor,
        ),
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      supportedLocales: const [
        Locale('en'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        FormBuilderLocalizations.delegate,
      ],
    );
  }
}
