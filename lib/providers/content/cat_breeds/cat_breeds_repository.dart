import 'package:el_gato/api_service/api_service.dart';
import 'package:el_gato/models/cat_breed/cat_breed.dart';

/// This repository helps get all the cat breed from the API
class CatBreedsRepository {
  /// Get the list of cat breeds
  Future<List<CatBreed>> getBreeds() async {
    final response = await ApiService<List<dynamic>>().getData('/Breeds');
    return response!
        .map((e) => CatBreed.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
