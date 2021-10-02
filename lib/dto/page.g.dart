// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CPage<T> _$CPageFromJson<T>(Map<String, dynamic> json) => CPage<T>(
      (json['list'] as List<dynamic>)
          .map((e) => _GenericListConverter<T>().fromJson(e as Object))
          .toList(),
      json['page'] as int,
      json['total'] as int,
    );

Map<String, dynamic> _$CPageToJson<T>(CPage<T> instance) => <String, dynamic>{
      'list': instance.list.map(_GenericListConverter<T>().toJson).toList(),
      'page': instance.page,
      'total': instance.total,
    };
