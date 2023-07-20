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
mixin _$UserState {
  bool get isLoading => throw _privateConstructorUsedError;
  UserResponse? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({bool isLoading, UserResponse? user});

  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserResponseCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, UserResponse? user});

  @override
  $UserResponseCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserState>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? user = freezed,
  }) {
    return _then(_$_UserState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
    ));
  }
}

/// @nodoc

class _$_UserState with DiagnosticableTreeMixin implements _UserState {
  const _$_UserState({this.isLoading = false, this.user});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final UserResponse? user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserState(isLoading: $isLoading, user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserState'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState({final bool isLoading, final UserResponse? user}) =
      _$_UserState;

  @override
  bool get isLoading;
  @override
  UserResponse? get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CameraState {
  AsyncValue<CameraController> get controller =>
      throw _privateConstructorUsedError;
  Size? get imageSize => throw _privateConstructorUsedError;
  List<TextElement>? get elements => throw _privateConstructorUsedError;
  bool get isSuccessfullyAnalyzed => throw _privateConstructorUsedError;
  String get mrz => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CameraStateCopyWith<CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
  @useResult
  $Res call(
      {AsyncValue<CameraController> controller,
      Size? imageSize,
      List<TextElement>? elements,
      bool isSuccessfullyAnalyzed,
      String mrz});
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

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
    Object? isSuccessfullyAnalyzed = null,
    Object? mrz = null,
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
      isSuccessfullyAnalyzed: null == isSuccessfullyAnalyzed
          ? _value.isSuccessfullyAnalyzed
          : isSuccessfullyAnalyzed // ignore: cast_nullable_to_non_nullable
              as bool,
      mrz: null == mrz
          ? _value.mrz
          : mrz // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CameraStateCopyWith<$Res>
    implements $CameraStateCopyWith<$Res> {
  factory _$$_CameraStateCopyWith(
          _$_CameraState value, $Res Function(_$_CameraState) then) =
      __$$_CameraStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AsyncValue<CameraController> controller,
      Size? imageSize,
      List<TextElement>? elements,
      bool isSuccessfullyAnalyzed,
      String mrz});
}

/// @nodoc
class __$$_CameraStateCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$_CameraState>
    implements _$$_CameraStateCopyWith<$Res> {
  __$$_CameraStateCopyWithImpl(
      _$_CameraState _value, $Res Function(_$_CameraState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
    Object? imageSize = freezed,
    Object? elements = freezed,
    Object? isSuccessfullyAnalyzed = null,
    Object? mrz = null,
  }) {
    return _then(_$_CameraState(
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
      isSuccessfullyAnalyzed: null == isSuccessfullyAnalyzed
          ? _value.isSuccessfullyAnalyzed
          : isSuccessfullyAnalyzed // ignore: cast_nullable_to_non_nullable
              as bool,
      mrz: null == mrz
          ? _value.mrz
          : mrz // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CameraState with DiagnosticableTreeMixin implements _CameraState {
  const _$_CameraState(
      {this.controller = const AsyncValue.loading(),
      this.imageSize,
      final List<TextElement>? elements,
      this.isSuccessfullyAnalyzed = false,
      this.mrz = ''})
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
  @JsonKey()
  final bool isSuccessfullyAnalyzed;
  @override
  @JsonKey()
  final String mrz;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CameraState(controller: $controller, imageSize: $imageSize, elements: $elements, isSuccessfullyAnalyzed: $isSuccessfullyAnalyzed, mrz: $mrz)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CameraState'))
      ..add(DiagnosticsProperty('controller', controller))
      ..add(DiagnosticsProperty('imageSize', imageSize))
      ..add(DiagnosticsProperty('elements', elements))
      ..add(
          DiagnosticsProperty('isSuccessfullyAnalyzed', isSuccessfullyAnalyzed))
      ..add(DiagnosticsProperty('mrz', mrz));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CameraState &&
            (identical(other.controller, controller) ||
                other.controller == controller) &&
            (identical(other.imageSize, imageSize) ||
                other.imageSize == imageSize) &&
            const DeepCollectionEquality().equals(other._elements, _elements) &&
            (identical(other.isSuccessfullyAnalyzed, isSuccessfullyAnalyzed) ||
                other.isSuccessfullyAnalyzed == isSuccessfullyAnalyzed) &&
            (identical(other.mrz, mrz) || other.mrz == mrz));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      controller,
      imageSize,
      const DeepCollectionEquality().hash(_elements),
      isSuccessfullyAnalyzed,
      mrz);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      __$$_CameraStateCopyWithImpl<_$_CameraState>(this, _$identity);
}

abstract class _CameraState implements CameraState {
  const factory _CameraState(
      {final AsyncValue<CameraController> controller,
      final Size? imageSize,
      final List<TextElement>? elements,
      final bool isSuccessfullyAnalyzed,
      final String mrz}) = _$_CameraState;

  @override
  AsyncValue<CameraController> get controller;
  @override
  Size? get imageSize;
  @override
  List<TextElement>? get elements;
  @override
  bool get isSuccessfullyAnalyzed;
  @override
  String get mrz;
  @override
  @JsonKey(ignore: true)
  _$$_CameraStateCopyWith<_$_CameraState> get copyWith =>
      throw _privateConstructorUsedError;
}
