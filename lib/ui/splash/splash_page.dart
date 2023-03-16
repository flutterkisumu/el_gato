import 'package:auto_route/auto_route.dart';
import 'package:el_gato/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// This page first appears on app launch
class SplashPage extends StatefulWidget {
  /// The constructor
  const SplashPage({super.key});
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
    Future.delayed(
      const Duration(seconds: 4),
      () => AutoRouter.of(context).replace(LoginRoute()),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.asset(
        'assets/lottie/cat_splash.json',
        onLoaded: (composition) {
          // Configure the AnimationController with the duration of the
          // Lottie file and start the animation.
          _controller
            ..duration = composition.duration
            ..forward();
        },
      ),),
    );
  }
}
