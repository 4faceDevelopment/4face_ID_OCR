import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fourface_id_ocr/service/rest_api/api_service.dart';
import 'package:fourface_id_ocr/service/rest_api/domain/user_request.dart';
import 'package:fourface_id_ocr/service/rest_api/domain/user_response.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepository();
});

class UserRepository {
  Future<UserResponse> fetch(int userId) async {
    final request = UserRequest(userId: userId);

    return await ApiService.instance.sendRequest(request);
  }
}
