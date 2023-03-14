import 'package:el_gato/api_service/api_service.dart';
import 'package:el_gato/models/cat_image/cat_image.dart';

/// This repository helps get all the cat breed from the API
class CatImagesRepository {
  /// Get the list of cat breeds
  Future<List<CatImage>> getImages() async {
    final response = await ApiService<List<dynamic>>().getData('/Images');
    return response!
        .map((e) => CatImage.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
