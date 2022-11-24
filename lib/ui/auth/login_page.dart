import 'package:el_gato/providers/obscure_password/obscure_password_provider.dart';
import 'package:el_gato/ui/widgets/password_suffix_widget.dart';
import 'package:el_gato/ui/widgets/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

/// This is the login page where
/// users will be able to log in
class LoginPage extends ConsumerWidget {
  /// The constructor
  LoginPage({Key? key}) : super(key: key);

  /// This holds the state for the login page password obscure state
  static StateNotifierProvider<ObscurePasswordProvider, bool>
      obscureLoginPasswordProvider =
      StateNotifierProvider<ObscurePasswordProvider, bool>(
    (_) => ObscurePasswordProvider(),
  );

  final Key _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: FormBuilder(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppTextInput(
            name: 'email',
            validators: [
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ],
            label: const Text('Enter your email'),
            hint: 'Enter your email here',
          ),
          const SizedBox(
            height: 10,
          ),
          AppTextInput(
              name: 'password',
              obscureText: ref.watch(obscureLoginPasswordProvider),
              label: const Text('Enter your password'),
              validators: [
                FormBuilderValidators.required(),
                FormBuilderValidators.minLength(6)
              ],
              suffix: PasswordSuffixWidget(
                obscureProvider: obscureLoginPasswordProvider,
              ),
              hint: 'Enter your password here',),
        ],
      ),
    ),);
  }
}
