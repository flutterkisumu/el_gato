import 'package:el_gato/providers/obscure_password/obscure_password_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This is the password toggle suffix widget
class PasswordSuffixWidget extends ConsumerWidget {
  /// The constructor
  const PasswordSuffixWidget({super.key, required this.obscureProvider});

  /// The provider to hold the obscure password state
  final StateNotifierProvider<ObscurePasswordProvider, bool> obscureProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref.read(obscureProvider.notifier).toggle();
      },
      icon: Icon(
        ref.watch(obscureProvider)
            ? CupertinoIcons.lock
            : CupertinoIcons.lock_open,
      ),
    );
  }
}
