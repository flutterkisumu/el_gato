import 'package:flutter/material.dart';

/// The footer that will appear around the app
class FooterTextWidget extends StatelessWidget {
  /// The constructor
  const FooterTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'EL-Gato, Vercetti Inc. 2022',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.caption,
    );
  }
}
