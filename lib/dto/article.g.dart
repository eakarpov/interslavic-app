// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDTO _$ArticleDTOFromJson(Map<String, dynamic> json) => ArticleDTO(
      json['language'] as String,
      json['alphabet'] as String,
      json['dictionary_uri'] as String,
      json['value'] as String,
      (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      _$enumDecode(_$ArticleKindEnumMap, json['kind']),
    );

Map<String, dynamic> _$ArticleDTOToJson(ArticleDTO instance) =>
    <String, dynamic>{
      'language': instance.language,
      'alphabet': instance.alphabet,
      'dictionary_uri': instance.dictionary_uri,
      'value': instance.value,
      'tags': instance.tags,
      'kind': _$ArticleKindEnumMap[instance.kind],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$ArticleKindEnumMap = {
  ArticleKind.Term: 'Term',
  ArticleKind.Saying: 'Saying',
  ArticleKind.Interpretation: 'Interpretation',
  ArticleKind.Idiom: 'Idiom',
};
