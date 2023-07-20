// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_registration_confirm_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserRegistrationIdState {
  String get surname => throw _privateConstructorUsedError;
  String get givenName => throw _privateConstructorUsedError;
  String get birthDate => throw _privateConstructorUsedError;
  String get idNumber => throw _privateConstructorUsedError;
  String get expiredDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRegistrationIdStateCopyWith<UserRegistrationIdState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegistrationIdStateCopyWith<$Res> {
  factory $UserRegistrationIdStateCopyWith(UserRegistrationIdState value,
          $Res Function(UserRegistrationIdState) then) =
      _$UserRegistrationIdStateCopyWithImpl<$Res, UserRegistrationIdState>;
  @useResult
  $Res call(
      {String surname,
      String givenName,
      String birthDate,
      String idNumber,
      String expiredDate});
}

/// @nodoc
class _$UserRegistrationIdStateCopyWithImpl<$Res,
        $Val extends UserRegistrationIdState>
    implements $UserRegistrationIdStateCopyWith<$Res> {
  _$UserRegistrationIdStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
    Object? givenName = null,
    Object? birthDate = null,
    Object? idNumber = null,
    Object? expiredDate = null,
  }) {
    return _then(_value.copyWith(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      givenName: null == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserRegistrationIdStateCopyWith<$Res>
    implements $UserRegistrationIdStateCopyWith<$Res> {
  factory _$$_UserRegistrationIdStateCopyWith(_$_UserRegistrationIdState value,
          $Res Function(_$_UserRegistrationIdState) then) =
      __$$_UserRegistrationIdStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String surname,
      String givenName,
      String birthDate,
      String idNumber,
      String expiredDate});
}

/// @nodoc
class __$$_UserRegistrationIdStateCopyWithImpl<$Res>
    extends _$UserRegistrationIdStateCopyWithImpl<$Res,
        _$_UserRegistrationIdState>
    implements _$$_UserRegistrationIdStateCopyWith<$Res> {
  __$$_UserRegistrationIdStateCopyWithImpl(_$_UserRegistrationIdState _value,
      $Res Function(_$_UserRegistrationIdState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surname = null,
    Object? givenName = null,
    Object? birthDate = null,
    Object? idNumber = null,
    Object? expiredDate = null,
  }) {
    return _then(_$_UserRegistrationIdState(
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      givenName: null == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      idNumber: null == idNumber
          ? _value.idNumber
          : idNumber // ignore: cast_nullable_to_non_nullable
              as String,
      expiredDate: null == expiredDate
          ? _value.expiredDate
          : expiredDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserRegistrationIdState
    with DiagnosticableTreeMixin
    implements _UserRegistrationIdState {
  const _$_UserRegistrationIdState(
      {this.surname = '',
      this.givenName = '',
      this.birthDate = '',
      this.idNumber = '',
      this.expiredDate = ''});

  @override
  @JsonKey()
  final String surname;
  @override
  @JsonKey()
  final String givenName;
  @override
  @JsonKey()
  final String birthDate;
  @override
  @JsonKey()
  final String idNumber;
  @override
  @JsonKey()
  final String expiredDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserRegistrationIdState(surname: $surname, givenName: $givenName, birthDate: $birthDate, idNumber: $idNumber, expiredDate: $expiredDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserRegistrationIdState'))
      ..add(DiagnosticsProperty('surname', surname))
      ..add(DiagnosticsProperty('givenName', givenName))
      ..add(DiagnosticsProperty('birthDate', birthDate))
      ..add(DiagnosticsProperty('idNumber', idNumber))
      ..add(DiagnosticsProperty('expiredDate', expiredDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserRegistrationIdState &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.idNumber, idNumber) ||
                other.idNumber == idNumber) &&
            (identical(other.expiredDate, expiredDate) ||
                other.expiredDate == expiredDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, surname, givenName, birthDate, idNumber, expiredDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserRegistrationIdStateCopyWith<_$_UserRegistrationIdState>
      get copyWith =>
          __$$_UserRegistrationIdStateCopyWithImpl<_$_UserRegistrationIdState>(
              this, _$identity);
}

abstract class _UserRegistrationIdState implements UserRegistrationIdState {
  const factory _UserRegistrationIdState(
      {final String surname,
      final String givenName,
      final String birthDate,
      final String idNumber,
      final String expiredDate}) = _$_UserRegistrationIdState;

  @override
  String get surname;
  @override
  String get givenName;
  @override
  String get birthDate;
  @override
  String get idNumber;
  @override
  String get expiredDate;
  @override
  @JsonKey(ignore: true)
  _$$_UserRegistrationIdStateCopyWith<_$_UserRegistrationIdState>
      get copyWith => throw _privateConstructorUsedError;
}
