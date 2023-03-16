import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

/// This is the global text input
class AppTextInput extends StatelessWidget {
  /// The constructor initiating all required and optional parameters
  const AppTextInput({
    super.key,
    required this.name,
    this.label,
    this.hint,
    this.validators,
    this.suffix,
    this.obscureText = false,
  });

  /// The key label
  final String name;

  /// The label
  final Widget? label;

  /// The hint
  final String? hint;

  /// The list of various validators
  final List<String? Function(String?)>? validators;

  /// Whatever will appear at the end of the field
  final Widget? suffix;

  /// The obscure text param t obscure passwords
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      validator: FormBuilderValidators.compose(validators ?? []),
      obscureText: obscureText,
      decoration:
          InputDecoration(hintText: hint, label: label, suffixIcon: suffix),
    );
  }
}
