import 'package:assesment/domain/entity/image_generator.dart';

abstract class IimageGeneratorRepository {
  Future<ImageGenerator> generateImage();
}
