import 'package:el_gato/models/api_fetch_state/api_fetch_state.dart';
import 'package:el_gato/models/cat_breed/cat_breed.dart';
import 'package:el_gato/providers/content/cat_breeds/cat_breeds_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'mocks/fake_cat_breed_repository.dart';

void main() {
  test('The fetch cat breeds feature on success works as expected', () async {
    final container = ProviderContainer(
      overrides: [
        // Override the behavior of repositoryProvider to return
        // FakeRepository instead of Repository.
        catBreedsRepositoryProvider.overrideWithValue(FakeCatBreedsRepository())
        // We do not have to override `todoListProvider`, it will automatically
        // use the overridden repositoryProvider
      ],
    );

    // The first read if the initial state
    expect(
      container.read(catBreedsProvider),
      ApiFetchState<List<CatBreed>>.initial(),
    );

    /// Wait for the get request to finish
    await container.read(catBreedsProvider.notifier).fetchBreeds();

    // Exposes the data fetched
    expect(
      container.read(catBreedsProvider),
      ApiFetchState<List<CatBreed>>.success(fakeBreeds),
    );
  });
}
