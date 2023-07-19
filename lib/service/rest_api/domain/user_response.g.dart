// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserResponse _$$_UserResponseFromJson(Map<String, dynamic> json) =>
    _$_UserResponse(
      No: json['No'] as int,
      birthday: json['birthday'] as int,
      type: const RegistrationTypeConverter().fromJson(json['type'] as int),
    );

Map<String, dynamic> _$$_UserResponseToJson(_$_UserResponse instance) =>
    <String, dynamic>{
      'No': instance.No,
      'birthday': instance.birthday,
      'type': const RegistrationTypeConverter().toJson(instance.type),
    };
