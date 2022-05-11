import 'package:assesment/domain/entity/image_generator.dart';
import 'package:assesment/domain/usecases/image_generator_dto.dart';
import 'package:assesment/infrastructure/api_client/api_client.dart';
import 'package:assesment/infrastructure/interfaces/image_generator_interface.dart';
import 'package:assesment/injection.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IimageGeneratorRepository)
class ImageGeneratorRepository implements IimageGeneratorRepository {
  ApiClient? api = getIt<ApiClient>();
  static const prefix = 'breeds/image/random';

  @override
  Future<ImageGenerator> generateImage() async {
    var response = await api?.get(prefix);

    ImageGenerator result =
        ImageGeneratorDto.fromJson(response?.data).toDomain();

    return result;
  }
}
