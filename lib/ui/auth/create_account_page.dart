import 'package:auto_route/auto_route.dart';
import 'package:el_gato/providers/obscure_password/obscure_password_provider.dart';
import 'package:el_gato/router/router.gr.dart';
import 'package:el_gato/ui/widgets/footer_text_widget.dart';
import 'package:el_gato/ui/widgets/password_suffix_widget.dart';
import 'package:el_gato/ui/widgets/primary_button_widget.dart';
import 'package:el_gato/ui/widgets/text_input.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:lottie/lottie.dart';

/// This is the login page where
/// users will be able to log in
class CreateAccountPage extends ConsumerWidget {
  /// The constructor
  CreateAccountPage({Key? key}) : super(key: key);

  /// This holds the state for the login page password obscure state
  static StateNotifierProvider<ObscurePasswordProvider, bool>
      obscureCreateAccountPasswordProvider =
      StateNotifierProvider<ObscurePasswordProvider, bool>(
    (_) => ObscurePasswordProvider(),
  );

  final Key _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              LottieBuilder.asset(
                'assets/lottie/cat_chill.json',
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextInput(
                name: 'name',
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ],
                label: const Text('Name'),
                hint: 'Enter your name here',
              ),
              AppTextInput(
                name: 'username',
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ],
                label: const Text('Username'),
                hint: 'Enter your preferred username here',
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextInput(
                name: 'email',
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.email(),
                ],
                label: const Text('Email'),
                hint: 'Enter your email here',
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextInput(
                name: 'password',
                obscureText: ref.watch(obscureCreateAccountPasswordProvider),
                label: const Text('Password'),
                validators: [
                  FormBuilderValidators.required(),
                  FormBuilderValidators.minLength(6)
                ],
                suffix: PasswordSuffixWidget(
                  obscureProvider: obscureCreateAccountPasswordProvider,
                ),
                hint: 'Enter your password here',
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButtonWidget(
                  label: 'Create Account',
                  onPressed: () {
                    AutoRouter.of(context).push(const MainHomeRoute());
                  }),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  text: 'Already have an account? ',
                  children: [
                    TextSpan(
                      text: 'Login',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          AutoRouter.of(context).pop();
                        },
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const FooterTextWidget(),
    );
  }
}
