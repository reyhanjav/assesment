import 'package:assesment/domain/entity/image_generator.dart';
import 'package:assesment/infrastructure/interfaces/image_generator_interface.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'image_generator_event.dart';
part 'image_generator_state.dart';
part 'image_generator_bloc.freezed.dart';

@injectable
class ImageGeneratorBloc
    extends Bloc<ImageGeneratorEvent, ImageGeneratorState> {
  final IimageGeneratorRepository _imageGeneratorRepository;

  ImageGeneratorBloc(this._imageGeneratorRepository)
      : super(const ImageGeneratorState.loadInProgress()) {
    on<ImageGeneratorEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
      ImageGeneratorEvent event, Emitter<ImageGeneratorState> emit) async {
    await event.map(generate: (value) async {
      try {
        emit(const ImageGeneratorState.loadInProgress());
        final data = await _imageGeneratorRepository.generateImage();

        emit(ImageGeneratorState.loadSuccess(data));
      } catch (e) {
        emit(const ImageGeneratorState.loadFailure(
            'We Encounter unexpected Issue'));
      }
    });
  }
}
