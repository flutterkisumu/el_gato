import 'package:flutter_riverpod/flutter_riverpod.dart';

/// This provider holds state for password obscurity
class ObscurePasswordProvider extends StateNotifier<bool> {
  /// The constructor
  ObscurePasswordProvider() : super(true);

  /// This method toggles the state
  void toggle() => state = !state;
}
