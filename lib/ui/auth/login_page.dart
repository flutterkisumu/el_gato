import 'package:el_gato/providers/obscure_password/obscure_password_provider.dart';
import 'package:el_gato/ui/widgets/password_suffix_widget.dart';
import 'package:el_gato/ui/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({Key? key}) : super(key: key);

  static StateNotifierProvider<ObscurePasswordProvider, bool>
      obscureLoginPasswordProvider =
      StateNotifierProvider<ObscurePasswordProvider, bool>(
          (_) => ObscurePasswordProvider(true));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppTextInput(
            name: 'email',
            label: Text('Enter your email'),
            hint: 'Enter your email here'),
        SizedBox(
          height: 10,
        ),
        AppTextInput(
            name: 'password',
            obscureText: ref.watch(obscureLoginPasswordProvider),
            label: Text('Enter your password'),
            suffix: PasswordSuffixWidget(
              obscureProvider: obscureLoginPasswordProvider,
            ),
            hint: 'Enter your password here'),
      ],
    ));
  }
}
