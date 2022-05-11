part of 'image_generator_bloc.dart';

@freezed
class ImageGeneratorState with _$ImageGeneratorState {
  const factory ImageGeneratorState.loadInProgress() = _LoadInProgress;
  const factory ImageGeneratorState.loadSuccess(ImageGenerator result) =
      _LoadSuccess;
  const factory ImageGeneratorState.loadFailure(String error) = _LoadFailure;
}
