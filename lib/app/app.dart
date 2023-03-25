import 'package:dio/dio.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:el_gato/providers/dio_provider/dio_provider.dart';
import 'package:el_gato/router/router.gr.dart';
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
    return DynamicColorBuilder(
      builder: (lightScheme, darkScheme) {
        return MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          title: 'El Gato',
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightScheme,
          ),
          darkTheme: ThemeData(
            useMaterial3: true,
            brightness: Brightness.dark,
            colorScheme: darkScheme,
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
      },
    );
  }
}
