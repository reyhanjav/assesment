// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bloc/image_generator_bloc.dart' as _i6;
import 'infrastructure/api_client/api_client.dart' as _i3;
import 'infrastructure/interfaces/image_generator_interface.dart' as _i4;
import 'infrastructure/repositories/image_generator_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ApiClient>(() => _i3.ApiClient());
  gh.lazySingleton<_i4.IimageGeneratorRepository>(
      () => _i5.ImageGeneratorRepository());
  gh.factory<_i6.ImageGeneratorBloc>(
      () => _i6.ImageGeneratorBloc(get<_i4.IimageGeneratorRepository>()));
  return get;
}
