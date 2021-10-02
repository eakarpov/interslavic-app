// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListParams _$ListParamsFromJson(Map<String, dynamic> json) => ListParams(
      const _Int2StrConverter().fromJson(json['per_page'] as String),
      const _Int2StrConverter().fromJson(json['page'] as String),
      json['name'] as String,
    );

Map<String, dynamic> _$ListParamsToJson(ListParams instance) =>
    <String, dynamic>{
      'per_page': const _Int2StrConverter().toJson(instance.per_page),
      'page': const _Int2StrConverter().toJson(instance.page),
      'name': instance.name,
    };
