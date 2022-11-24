import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The main bottom nav bar provider
final mainBottomNavProvider =
    StateNotifierProvider<BottomNavProvider, int>((_) {
  return BottomNavProvider();
});

/// This provider holds the bottom nav state
class BottomNavProvider extends StateNotifier<int> {
  /// The constructor
  BottomNavProvider() : super(0);

  /// Change the bottom nav state
   void setvalue(int val) {
    state = val;
  }
}
