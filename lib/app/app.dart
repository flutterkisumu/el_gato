import 'package:el_gato/router/router.gr.dart';
import 'package:flutter/material.dart';

class MyCatApp extends StatelessWidget {
  MyCatApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
