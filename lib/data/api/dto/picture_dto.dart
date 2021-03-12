import 'package:freezed_annotation/freezed_annotation.dart';

part 'picture_dto.g.dart';

@JsonSerializable()
class PictureDto {
  final String id;
  final String author;
  final int width;
  final int height;
  final String url;
  @JsonKey(name: 'download_url')
  final String downloadUrl;

  PictureDto(
      {@required this.id,
      @required this.author,
      @required this.width,
      @required this.height,
      @required this.url,
      @required this.downloadUrl});

  factory PictureDto.fromJson(Map<String, dynamic> json) =>
      _$PictureDtoFromJson(json);
}
