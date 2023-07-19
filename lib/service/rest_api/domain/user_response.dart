import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@freezed
class UserResponse with _$UserResponse {
  factory UserResponse({
    // ignore: non_constant_identifier_names
    required int No,
    required int birthday,
    @RegistrationTypeConverter() required RegistrationType type,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

enum RegistrationType { insurance, passport, drivingLicense, myNumber }

extension RegistrationTypeEx on RegistrationType {
  static final rawValues = {
    RegistrationType.insurance: 1,
    RegistrationType.passport: 2,
    RegistrationType.drivingLicense: 3,
    RegistrationType.myNumber: 4,
  };

  int get rawValue => rawValues[this]!;

  static RegistrationType from(int rawValue) =>
      rawValues.keys.firstWhere((key) => rawValues[key] == rawValue,
          orElse: () => RegistrationType.insurance);
}

class RegistrationTypeConverter
    implements JsonConverter<RegistrationType, int> {
  const RegistrationTypeConverter();

  @override
  RegistrationType fromJson(int rawValue) => RegistrationTypeEx.from(rawValue);

  @override
  int toJson(RegistrationType type) => type.rawValue;
}
