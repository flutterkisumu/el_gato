import 'package:el_gato/providers/bottom_nav/bottom_nav_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// Using mockito to keep track of when a provider notify its listeners
class Listener extends Mock {
  void call(int? previous, int value);
}

void main() {
  test('Bottom navigation provider should start with the first tab', () {
    // An object that will allow us to read providers
    // Do not share this between tests.
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final listener = Listener();

    // Observe a provider and spy the changes.
    container.listen<int>(
      mainBottomNavProvider,
      listener,
      fireImmediately: true,
    );

    // the listener is called immediately with 0, the default value
    verify(listener(null, 0)).called(1);

    verifyNoMoreInteractions(listener);

    // We increment the value
    container.read(mainBottomNavProvider.notifier).state++;

    // The listener was called again, but with 1 this time
    verify(listener(0, 1)).called(1);
    verifyNoMoreInteractions(listener);
  });

  test('The bottom navbar state is not shared between tests', () {
    // We use a different ProviderContainer to read our provider.
    // This ensure that no state is reused between tests
    final container = ProviderContainer();
    addTearDown(container.dispose);
    final listener = Listener();

    container.listen<int>(
      mainBottomNavProvider,
      listener,
      fireImmediately: true,
    );

    // The new test correctly uses the default value: 0
    verify(listener(null, 0)).called(1);
    verifyNoMoreInteractions(listener);
  });
}
