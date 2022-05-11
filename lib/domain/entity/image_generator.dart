import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_generator.freezed.dart';

@freezed
class ImageGenerator with _$ImageGenerator {
  factory ImageGenerator({String? message, String? status}) = _ImageGenerator;
}
