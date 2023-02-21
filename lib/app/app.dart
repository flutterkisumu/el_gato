import 'package:dio/dio.dart';
import 'package:el_gato/providers/dio_provider/dio_provider.dart';
import 'package:el_gato/router/router.gr.dart';
import 'package:el_gato/style/app_colors.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:get_it/get_it.dart';

/// The main app
class MyCatApp extends ConsumerStatefulWidget {
  /// the constructor
  const MyCatApp({super.key});

  @override
  ConsumerState<MyCatApp> createState() => _MyCatAppState();
}

class _MyCatAppState extends ConsumerState<MyCatApp> {
  final _appRouter = AppRouter();

  @override
  void initState() {
    super.initState();

    /// Register the dio provider inside getit
    GetIt.I.registerSingleton<Dio>(ref.read(dioProvider));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      title: 'El Gato',
      theme: ThemeData(
        textTheme: textTheme(),
        colorScheme: const ColorScheme.light(
          primary: AppColors.darkBlueColor,
          secondary: AppColors.darkCyanColor,
        ),
      ),
      darkTheme: ThemeData(
        primaryColor: AppColors.darkCyanColor,
        textTheme: textTheme(darkTheme: true),
        brightness: Brightness.dark,
        colorScheme: const ColorScheme.dark(
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

/// The text theme for the app
TextTheme textTheme({bool darkTheme = false}) => TextTheme(
      titleLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: darkTheme ? AppColors.cyanColor : AppColors.darkBlueColor,
      ),
      titleMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: darkTheme ? AppColors.cyanColor : AppColors.darkBlueColor,
      ),
      titleSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: darkTheme ? AppColors.cyanColor : AppColors.darkBlueColor,
      ),
      bodyLarge: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.normal,
      ),
      bodyMedium: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodySmall: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
    );
