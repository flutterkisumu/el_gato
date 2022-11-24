import 'package:flutter_riverpod/flutter_riverpod.dart';

class ObscurePasswordProvider extends StateNotifier<bool> {
  ObscurePasswordProvider(bool state) : super(state);
  toggle() => state = !state;
}
