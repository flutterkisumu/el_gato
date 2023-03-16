import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// This is the primary button used all over the app
class PrimaryButtonWidget extends StatelessWidget {
  /// The constructor
  const PrimaryButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
  });

  /// The button's label
  final String label;

  /// The on pressed function
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      color: Theme.of(context).colorScheme.primary,
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
