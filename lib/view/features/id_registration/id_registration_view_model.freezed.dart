// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_registration_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IdRegistrationState {
  AsyncValue<CameraController> get controller =>
      throw _privateConstructorUsedError;
  Size? get imageSize => throw _privateConstructorUsedError;
  List<TextElement>? get elements => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IdRegistrationStateCopyWith<IdRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdRegistrationStateCopyWith<$Res> {
  factory $IdRegistrationStateCopyWith(
          IdRegistrationState value, $Res Function(IdRegistrationState) then) =
      _$IdRegistrationStateCopyWithImpl<$Res, IdRegistrationState>;
  @useResult
  $Res call(
      {AsyncValue<CameraController> controller,
      Size? imageSize,
      List<TextElement>? elements});
}

/// @nodoc
class _$IdRegistrationStateCopyWithImpl<$Res, $Val extends IdRegistrationState>
    implements $IdRegistrationStateCopyWith<$Res> {
  _$IdRegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? imageSize = freezed,
    Object? elements = freezed,
  }) {
    return _then(_value.copyWith(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as AsyncValue<CameraController>,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as Size?,
      elements: freezed == elements
          ? _value.elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<TextElement>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdRegistrationStateCopyWith<$Res>
    implements $IdRegistrationStateCopyWith<$Res> {
  factory _$$_IdRegistrationStateCopyWith(_$_IdRegistrationState value,
          $Res Function(_$_IdRegistrationState) then) =
      __$$_IdRegistrationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<CameraController> controller,
      Size? imageSize,
      List<TextElement>? elements});
}

/// @nodoc
class __$$_IdRegistrationStateCopyWithImpl<$Res>
    extends _$IdRegistrationStateCopyWithImpl<$Res, _$_IdRegistrationState>
    implements _$$_IdRegistrationStateCopyWith<$Res> {
  __$$_IdRegistrationStateCopyWithImpl(_$_IdRegistrationState _value,
      $Res Function(_$_IdRegistrationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? imageSize = freezed,
    Object? elements = freezed,
  }) {
    return _then(_$_IdRegistrationState(
      controller: null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as AsyncValue<CameraController>,
      imageSize: freezed == imageSize
          ? _value.imageSize
          : imageSize // ignore: cast_nullable_to_non_nullable
              as Size?,
      elements: freezed == elements
          ? _value._elements
          : elements // ignore: cast_nullable_to_non_nullable
              as List<TextElement>?,
    ));
  }
}

/// @nodoc

class _$_IdRegistrationState
    with DiagnosticableTreeMixin
    implements _IdRegistrationState {
  const _$_IdRegistrationState(
      {this.controller = const AsyncValue.loading(),
      this.imageSize,
      final List<TextElement>? elements})
      : _elements = elements;

  @override
  @JsonKey()
  final AsyncValue<CameraController> controller;
  @override
  final Size? imageSize;
  final List<TextElement>? _elements;
  @override
  List<TextElement>? get elements {
    final value = _elements;
    if (value == null) return null;
    if (_elements is EqualUnmodifiableListView) return _elements;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'IdRegistrationState(controller: $controller, imageSize: $imageSize, elements: $elements)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'IdRegistrationState'))
      ..add(DiagnosticsProperty('controller', controller))
      ..add(DiagnosticsProperty('imageSize', imageSize))
      ..add(DiagnosticsProperty('elements', elements));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IdRegistrationState &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            const DeepCollectionEquality().equals(other._elements, _elements));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller, imageSize,
      const DeepCollectionEquality().hash(_elements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdRegistrationStateCopyWith<_$_IdRegistrationState> get copyWith =>
      __$$_IdRegistrationStateCopyWithImpl<_$_IdRegistrationState>(
          this, _$identity);
}

abstract class _IdRegistrationState implements IdRegistrationState {
  const factory _IdRegistrationState(
      {final AsyncValue<CameraController> controller,
      final Size? imageSize,
      final List<TextElement>? elements}) = _$_IdRegistrationState;

  @override
  AsyncValue<CameraController> get controller;
  @override
  Size? get imageSize;
  @override
  List<TextElement>? get elements;
  @override
  @JsonKey(ignore: true)
  _$$_IdRegistrationStateCopyWith<_$_IdRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
