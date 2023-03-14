// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatImage _$CatImageFromJson(Map<String, dynamic> json) {
  return _CatImage.fromJson(json);
}

/// @nodoc
mixin _$CatImage {
  @JsonKey(name: 'Id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'Url')
  String? get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'Width')
  num? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'Height')
  num? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatImageCopyWith<CatImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatImageCopyWith<$Res> {
  factory $CatImageCopyWith(CatImage value, $Res Function(CatImage) then) =
      _$CatImageCopyWithImpl<$Res, CatImage>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') String? id,
      @JsonKey(name: 'Url') String? url,
      @JsonKey(name: 'Width') num? width,
      @JsonKey(name: 'Height') num? height});
}

/// @nodoc
class _$CatImageCopyWithImpl<$Res, $Val extends CatImage>
    implements $CatImageCopyWith<$Res> {
  _$CatImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CatImageCopyWith<$Res> implements $CatImageCopyWith<$Res> {
  factory _$$_CatImageCopyWith(
          _$_CatImage value, $Res Function(_$_CatImage) then) =
      __$$_CatImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Id') String? id,
      @JsonKey(name: 'Url') String? url,
      @JsonKey(name: 'Width') num? width,
      @JsonKey(name: 'Height') num? height});
}

/// @nodoc
class __$$_CatImageCopyWithImpl<$Res>
    extends _$CatImageCopyWithImpl<$Res, _$_CatImage>
    implements _$$_CatImageCopyWith<$Res> {
  __$$_CatImageCopyWithImpl(
      _$_CatImage _value, $Res Function(_$_CatImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
    Object? width = freezed,
    Object? height = freezed,
  }) {
    return _then(_$_CatImage(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatImage implements _CatImage {
  _$_CatImage(
      {@JsonKey(name: 'Id') this.id,
      @JsonKey(name: 'Url') this.url,
      @JsonKey(name: 'Width') this.width,
      @JsonKey(name: 'Height') this.height});

  factory _$_CatImage.fromJson(Map<String, dynamic> json) =>
      _$$_CatImageFromJson(json);

  @override
  @JsonKey(name: 'Id')
  final String? id;
  @override
  @JsonKey(name: 'Url')
  final String? url;
  @override
  @JsonKey(name: 'Width')
  final num? width;
  @override
  @JsonKey(name: 'Height')
  final num? height;

  @override
  String toString() {
    return 'CatImage(id: $id, url: $url, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CatImage &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, width, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CatImageCopyWith<_$_CatImage> get copyWith =>
      __$$_CatImageCopyWithImpl<_$_CatImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatImageToJson(
      this,
    );
  }
}

abstract class _CatImage implements CatImage {
  factory _CatImage(
      {@JsonKey(name: 'Id') final String? id,
      @JsonKey(name: 'Url') final String? url,
      @JsonKey(name: 'Width') final num? width,
      @JsonKey(name: 'Height') final num? height}) = _$_CatImage;

  factory _CatImage.fromJson(Map<String, dynamic> json) = _$_CatImage.fromJson;

  @override
  @JsonKey(name: 'Id')
  String? get id;
  @override
  @JsonKey(name: 'Url')
  String? get url;
  @override
  @JsonKey(name: 'Width')
  num? get width;
  @override
  @JsonKey(name: 'Height')
  num? get height;
  @override
  @JsonKey(ignore: true)
  _$$_CatImageCopyWith<_$_CatImage> get copyWith =>
      throw _privateConstructorUsedError;
}
