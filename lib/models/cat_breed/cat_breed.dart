// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breed.freezed.dart';
part 'cat_breed.g.dart';

/// This is the cat breed model
@freezed
class CatBreed with _$CatBreed {
  /// This is the cat breed factory
  factory CatBreed({
    /// This is the id of the cat breed
    @JsonKey(name: 'BreedID') required String id,

    /// This is the name of the cat breed
    @JsonKey(name: 'BreedName') required String name,

    /// This is the description of the cat breed
    @JsonKey(name: 'BreedDescription') required String description,

    /// This is the image url of the cat breed
    @JsonKey(name: 'BreedImage') String? imageUrl,
  }) = _CatBreed;

  /// This converts the json to a cat breed model
  factory CatBreed.fromJson(Map<String, dynamic> json) =>
      _$CatBreedFromJson(json);
}
