import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/obscure_password/obscure_password_provider.dart';

class PasswordSuffixWidget extends ConsumerWidget {
  final StateNotifierProvider<ObscurePasswordProvider, bool> obscureProvider;
  const PasswordSuffixWidget({Key? key, required this.obscureProvider})
      : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    return IconButton(
        onPressed: () {
          ref.read(obscureProvider.notifier).toggle();
        },
        icon: Icon(ref.watch(obscureProvider)
            ? CupertinoIcons.lock
            : CupertinoIcons.lock_open));
  }
}
