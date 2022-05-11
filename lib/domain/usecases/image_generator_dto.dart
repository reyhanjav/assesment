import 'package:assesment/domain/entity/image_generator.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_generator_dto.freezed.dart';

@freezed
class ImageGeneratorDto with _$ImageGeneratorDto {
  const ImageGeneratorDto._();

  const factory ImageGeneratorDto({String? message, String? status}) =
      _ImageGeneratorDto;

  factory ImageGeneratorDto.fromDomain(ImageGenerator? image) {
    return ImageGeneratorDto(message: image?.message);
  }

  ImageGenerator toDomain() {
    return ImageGenerator(message: message, status: status);
  }

  factory ImageGeneratorDto.fromJson(Map<String, dynamic>? json) {
    return ImageGeneratorDto(
      message: json?['message'] as String?,
      status: json?['status'] as String?,
    );
  }
}
