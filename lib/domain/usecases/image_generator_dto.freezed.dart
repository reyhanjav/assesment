// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_generator_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageGeneratorDto {
  String? get message => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageGeneratorDtoCopyWith<ImageGeneratorDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGeneratorDtoCopyWith<$Res> {
  factory $ImageGeneratorDtoCopyWith(
          ImageGeneratorDto value, $Res Function(ImageGeneratorDto) then) =
      _$ImageGeneratorDtoCopyWithImpl<$Res>;
  $Res call({String? message, String? status});
}

/// @nodoc
class _$ImageGeneratorDtoCopyWithImpl<$Res>
    implements $ImageGeneratorDtoCopyWith<$Res> {
  _$ImageGeneratorDtoCopyWithImpl(this._value, this._then);

  final ImageGeneratorDto _value;
  // ignore: unused_field
  final $Res Function(ImageGeneratorDto) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ImageGeneratorDtoCopyWith<$Res>
    implements $ImageGeneratorDtoCopyWith<$Res> {
  factory _$$_ImageGeneratorDtoCopyWith(_$_ImageGeneratorDto value,
          $Res Function(_$_ImageGeneratorDto) then) =
      __$$_ImageGeneratorDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? status});
}

/// @nodoc
class __$$_ImageGeneratorDtoCopyWithImpl<$Res>
    extends _$ImageGeneratorDtoCopyWithImpl<$Res>
    implements _$$_ImageGeneratorDtoCopyWith<$Res> {
  __$$_ImageGeneratorDtoCopyWithImpl(
      _$_ImageGeneratorDto _value, $Res Function(_$_ImageGeneratorDto) _then)
      : super(_value, (v) => _then(v as _$_ImageGeneratorDto));

  @override
  _$_ImageGeneratorDto get _value => super._value as _$_ImageGeneratorDto;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ImageGeneratorDto(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ImageGeneratorDto extends _ImageGeneratorDto {
  const _$_ImageGeneratorDto({this.message, this.status}) : super._();

  @override
  final String? message;
  @override
  final String? status;

  @override
  String toString() {
    return 'ImageGeneratorDto(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageGeneratorDto &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_ImageGeneratorDtoCopyWith<_$_ImageGeneratorDto> get copyWith =>
      __$$_ImageGeneratorDtoCopyWithImpl<_$_ImageGeneratorDto>(
          this, _$identity);
}

abstract class _ImageGeneratorDto extends ImageGeneratorDto {
  const factory _ImageGeneratorDto(
      {final String? message, final String? status}) = _$_ImageGeneratorDto;
  const _ImageGeneratorDto._() : super._();

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ImageGeneratorDtoCopyWith<_$_ImageGeneratorDto> get copyWith =>
      throw _privateConstructorUsedError;
}
