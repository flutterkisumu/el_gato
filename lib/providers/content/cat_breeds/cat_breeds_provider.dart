import 'package:dio/dio.dart';
import 'package:el_gato/models/api_fetch_state/api_fetch_state.dart';
import 'package:el_gato/models/cat_breed/cat_breed.dart';
import 'package:el_gato/providers/content/cat_breeds/cat_breeds_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The cat breeeds repository provider
final catBreedsRepositoryProvider = Provider((ref) => CatBreedsRepository());

///The [CatBreedsProvider] global instance
final catBreedsProvider =
    StateNotifierProvider<CatBreedsProvider, ApiFetchState<List<CatBreed>>>(
        (ref) {
  /// Expose the repository
  final repository = ref.watch(catBreedsRepositoryProvider);
  return CatBreedsProvider(repository);
});

/// The cat breeds provider to handle the cat bred states
class CatBreedsProvider extends StateNotifier<ApiFetchState<List<CatBreed>>> {
  /// Constructor call
  CatBreedsProvider(this.repository) : super(ApiFetchState.initial());

  /// A kfinal instance of the repository
  final CatBreedsRepository repository;

  /// This method fetches the breeds to the device
  Future<void> fetchBreeds() async {
    state = ApiFetchState.loading();
    try {
      state = ApiFetchState.success(await repository.getBreeds());
    } on DioError catch (e) {
      state = ApiFetchState.failed(e.toString());
    } catch (e) {
      state = ApiFetchState.failed(e.toString());
    }
  }
}
