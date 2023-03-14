import 'package:dio/dio.dart';
import 'package:el_gato/models/api_fetch_state/api_fetch_state.dart';
import 'package:el_gato/models/cat_image/cat_image.dart';
import 'package:el_gato/providers/content/images/images_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// The cat breeeds repository provider
final catImagesRepositoryProvider = Provider((ref) => CatImagesRepository());

///The [CatImagesProvider] global instance
final catImagesProvider =
    StateNotifierProvider<CatImagesProvider, ApiFetchState<List<CatImage>>>(
        (ref) {
  /// Expose the repository
  final repository = ref.watch(catImagesRepositoryProvider);
  return CatImagesProvider(repository)..fetchImages();
});

/// The cat breeds provider to handle the cat bred states
class CatImagesProvider extends StateNotifier<ApiFetchState<List<CatImage>>> {
  /// Constructor call
  CatImagesProvider(this.repository) : super(ApiFetchState.initial());

  /// A kfinal instance of the repository
  final CatImagesRepository repository;

  /// This method fetches the breeds to the device
  Future<void> fetchImages({bool refresh = false}) async {
    if (refresh) {
    } else {
      state = ApiFetchState.loading();
    }
    try {
      state = ApiFetchState.success(await repository.getImages());
    } on DioError catch (e) {
      state = ApiFetchState.failed(e.toString());
    }
  }
}
