import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fourface_id_ocr/utils/common_utils.dart';
import 'package:fourface_id_ocr/view/features/id_registration/id_registration_view_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'id_registration_confirm_view_model.freezed.dart';

@freezed
class UserRegistrationIdState with _$UserRegistrationIdState {
  const factory UserRegistrationIdState({
    @Default('') String surname,
    @Default('') String givenName,
    @Default('') String idNumber,
    @Default('') String birthDate,
    @Default('') String expiredDate,
  }) = _UserRegistrationIdState;
}

final userRegistrationIdViewModelProvider =
    StateNotifierProvider<UserRegistrationIdViewModel, UserRegistrationIdState>(
        (ref) {
  return UserRegistrationIdViewModel._(ref);
});

class UserRegistrationIdViewModel
    extends StateNotifier<UserRegistrationIdState> {
  UserRegistrationIdViewModel._(this._ref)
      : super(const UserRegistrationIdState()) {
    final cameraViewModel = _ref.watch(cameraViewModelProvider);
    convertMrz(cameraViewModel.mrz);
  }

  final Ref _ref;

  void convertMrz(String mrz) {
    int index = mrz.indexOf("<<");

    state = state.copyWith(
      surname: mrz.substring(5, index),
      givenName: mrz.substring(index, 44).replaceAll('<', ''),
      idNumber: mrz.substring(44, 53),
      birthDate: CommonUtils.convertDateTime(mrz.substring(57, 63)),
      expiredDate: CommonUtils.convertDateTime(mrz.substring(65, 71)),
    );
  }
}
