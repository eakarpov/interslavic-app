import 'package:interslavic_app/dto/article.dart';
import 'package:json_annotation/json_annotation.dart';

part 'page.g.dart';

// flutter pub run build_runner build

class _GenericListConverter<T> implements JsonConverter<T, Object> {
  const _GenericListConverter();

  @override
  T fromJson(Object json) {
    if (json is Map<String, dynamic> &&
        json.containsKey('value')) {
      return ArticleDTO.fromJson(json) as T;
    }
    return json as T;
  }

  @override
  Object toJson(T object) => object as Object;
}

@JsonSerializable()
class CPage<T> {

  @_GenericListConverter()
  final List<T> list;

  final int page;
  final int total;

  CPage(
    this.list,
    this.page,
    this.total,
  );

  factory CPage.fromJson(Map<String, dynamic> json) => _$CPageFromJson(json);

  Map<String, dynamic> toJson() => _$CPageToJson(this);
}