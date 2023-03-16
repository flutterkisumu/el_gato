// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_image.freezed.dart';
part 'cat_image.g.dart';

@freezed

/// This is the cat image model
class CatImage with _$CatImage {
  /// This is the cat image factory
  factory CatImage({
    /// The unique id of the image
    @JsonKey(name: 'Id') String? id,

    /// The url of the image
    @JsonKey(name: 'Url') String? url,

    /// The width of the image
    @JsonKey(name: 'Width') num? width,

    /// The height of the image
    @JsonKey(name: 'Height') num? height,
  }) = _CatImage;

  /// This converts the json to a cat image model
  factory CatImage.fromJson(Map<String, dynamic> json) =>
      _$CatImageFromJson(json);
}
