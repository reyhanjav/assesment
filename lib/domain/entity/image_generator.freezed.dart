// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'image_generator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ImageGenerator {
  String? get message => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ImageGeneratorCopyWith<ImageGenerator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageGeneratorCopyWith<$Res> {
  factory $ImageGeneratorCopyWith(
          ImageGenerator value, $Res Function(ImageGenerator) then) =
      _$ImageGeneratorCopyWithImpl<$Res>;
  $Res call({String? message, String? status});
}

/// @nodoc
class _$ImageGeneratorCopyWithImpl<$Res>
    implements $ImageGeneratorCopyWith<$Res> {
  _$ImageGeneratorCopyWithImpl(this._value, this._then);

  final ImageGenerator _value;
  // ignore: unused_field
  final $Res Function(ImageGenerator) _then;

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
abstract class _$$_ImageGeneratorCopyWith<$Res>
    implements $ImageGeneratorCopyWith<$Res> {
  factory _$$_ImageGeneratorCopyWith(
          _$_ImageGenerator value, $Res Function(_$_ImageGenerator) then) =
      __$$_ImageGeneratorCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? status});
}

/// @nodoc
class __$$_ImageGeneratorCopyWithImpl<$Res>
    extends _$ImageGeneratorCopyWithImpl<$Res>
    implements _$$_ImageGeneratorCopyWith<$Res> {
  __$$_ImageGeneratorCopyWithImpl(
      _$_ImageGenerator _value, $Res Function(_$_ImageGenerator) _then)
      : super(_value, (v) => _then(v as _$_ImageGenerator));

  @override
  _$_ImageGenerator get _value => super._value as _$_ImageGenerator;

  @override
  $Res call({
    Object? message = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_ImageGenerator(
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

class _$_ImageGenerator implements _ImageGenerator {
  _$_ImageGenerator({this.message, this.status});

  @override
  final String? message;
  @override
  final String? status;

  @override
  String toString() {
    return 'ImageGenerator(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageGenerator &&
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
  _$$_ImageGeneratorCopyWith<_$_ImageGenerator> get copyWith =>
      __$$_ImageGeneratorCopyWithImpl<_$_ImageGenerator>(this, _$identity);
}

abstract class _ImageGenerator implements ImageGenerator {
  factory _ImageGenerator({final String? message, final String? status}) =
      _$_ImageGenerator;

  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ImageGeneratorCopyWith<_$_ImageGenerator> get copyWith =>
      throw _privateConstructorUsedError;
}
