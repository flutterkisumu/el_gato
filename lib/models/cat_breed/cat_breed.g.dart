// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'cat_breed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatBreed _$$_CatBreedFromJson(Map<String, dynamic> json) => _$_CatBreed(
      id: json['Id'] as String,
      name: json['BreedName'] as String,
      description: json['BreedDescription'] as String,
      imageUrl: json['BreedImage'] as String?,
    );

Map<String, dynamic> _$$_CatBreedToJson(_$_CatBreed instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'BreedName': instance.name,
      'BreedDescription': instance.description,
      'BreedImage': instance.imageUrl,
    };
