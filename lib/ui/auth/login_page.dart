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
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            LottieBuilder.asset(
              'assets/lottie/cat_wiggle.json',
              height: 300,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
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
                        hint: 'Enter your password here',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                      PrimaryButtonWidget(label: 'Login', onPressed: () {}),
                      const SizedBox(
                        height: 10,
                      ),
                      Text.rich(
                        TextSpan(
                          text: "Dont't have an account? ",
                          children: [
                            TextSpan(
                              text: 'Create One',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  AutoRouter.of(context)
                                      .push(CreateAccountRoute());
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: const FooterTextWidget(),
    );
  }
}
