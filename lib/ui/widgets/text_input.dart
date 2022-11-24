import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AppTextInput extends StatelessWidget {
  final String name;
  final Widget? label;
  final String? hint;
  final Widget? suffix;
  final bool obscureText;
  const AppTextInput(
      {Key? key,
      required this.name,
      this.label,
      this.hint,
      this.suffix,
      this.obscureText = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      obscureText: obscureText,
      decoration:
          InputDecoration(hintText: hint, label: label, suffixIcon: suffix),
    );
  }
}
