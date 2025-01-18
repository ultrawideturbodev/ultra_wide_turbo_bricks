part '{{collectionSingle.snakeCase()}}_dto.g.dart';

@JsonSerializable(includeIfNull: true, explicitToJson: true)
class {{collectionSingle.pascalCase()}}Dto extends TurboWriteableId<String> {
  {{collectionSingle.pascalCase()}}Dto({
    required this.id,
    required this.ownerId,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  @JsonKey(includeFromJson: true, includeToJson: false)
  final String id;
  final String ownerId;

  @TimestampConverter()
  final DateTime createdAt;
  @TimestampConverter()
  final DateTime updatedAt;

  static const fromJsonFactory = _${{collectionSingle.pascalCase()}}DtoFromJson;
  factory {{collectionSingle.pascalCase()}}Dto.fromJson(Map<String, dynamic> json) => _${{collectionSingle.pascalCase()}}DtoFromJson(json);
  static const toJsonFactory = _${{collectionSingle.pascalCase()}}DtoToJson;
  @override
  Map<String, dynamic> toJson() => _${{collectionSingle.pascalCase()}}DtoToJson(this);

  // TODO(turbodev): Add copyWith | 15/01/2025
  // TODO(turbodev): Add to string | 15/01/2025
}

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class Update{{collectionSingle.pascalCase()}}DtoRequest extends TurboWriteable {
  Update{{collectionSingle.pascalCase()}}DtoRequest({
  });

  static const fromJsonFactory = _$Update{{collectionSingle.pascalCase()}}DtoRequestFromJson;
  factory Update{{collectionSingle.pascalCase()}}DtoRequest.fromJson(Map<String, dynamic> json) =>
      _$Update{{collectionSingle.pascalCase()}}DtoRequestFromJson(json);

  static const toJsonFactory = _$Update{{collectionSingle.pascalCase()}}DtoRequestToJson;
  @override
  Map<String, dynamic> toJson() => _$Update{{collectionSingle.pascalCase()}}DtoRequestToJson(this);
}
