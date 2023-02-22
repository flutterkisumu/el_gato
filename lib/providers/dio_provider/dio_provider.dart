import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This is the provider for Dio that will be used throughout the app
final dioProvider = Provider<Dio>(
  (ref) {
    final dio = Dio();

    ref.onDispose(dio.close);

    return dio
      ..interceptors.add(
        AwesomeDioInterceptor(
          logRequestTimeout: false,
          logRequestHeaders: false,
          logResponseHeaders: false,
          logger: debugPrint,
        ),
      );
  },
);
