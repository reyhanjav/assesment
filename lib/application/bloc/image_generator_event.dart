part of 'image_generator_bloc.dart';

@freezed
class ImageGeneratorEvent with _$ImageGeneratorEvent {
  const factory ImageGeneratorEvent.generate() = _GetImageGenerator;
}
