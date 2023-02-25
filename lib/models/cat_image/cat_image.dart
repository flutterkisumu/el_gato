import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_image.freezed.dart';
part 'cat_image.g.dart';

@freezed
class CatImage with _$CatImage {
  factory CatImage({
    @JsonKey(name: 'Id') String? id,
    @JsonKey(name: 'Url') String? url,
    @JsonKey(name: 'Width') num? width,
    @JsonKey(name: 'Height') num? height,
  }) = _CatImage;

  factory CatImage.fromJson(Map<String, dynamic> json) =>
      _$CatImageFromJson(json);
}
