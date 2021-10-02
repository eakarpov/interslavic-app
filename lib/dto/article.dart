import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';

enum ArticleKind {
  Term,
  Saying,
  Interpretation,
  Idiom
}

// flutter pub run build_runner build

@JsonSerializable()
class ArticleDTO {
  final String language;
  final String alphabet;
  final String dictionary_uri;
  final String value;
  final List<String> tags;
  final ArticleKind kind;

  ArticleDTO(
    this.language,
    this.alphabet,
    this.dictionary_uri,
    this.value,
    this.tags,
    this.kind,
  );

  factory ArticleDTO.fromJson(Map<String, dynamic> json) => _$ArticleDTOFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleDTOToJson(this);
}