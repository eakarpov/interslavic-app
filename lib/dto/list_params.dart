import 'package:json_annotation/json_annotation.dart';

part 'list_params.g.dart';

class _Int2StrConverter implements JsonConverter<int, String> {
  const _Int2StrConverter();

  @override
  int fromJson(String json) {
    return int.parse(json);
  }

  @override
  String toJson(int object) => object.toString();
}

@JsonSerializable()
class ListParams {
  @_Int2StrConverter()
  final int per_page;

  @_Int2StrConverter()
  final int page;

  final String name;

  ListParams(
    this.per_page,
    this.page,
    this.name,
  );

  factory ListParams.fromJson(Map<String, dynamic> json) => _$ListParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ListParamsToJson(this);
}