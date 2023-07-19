import 'package:fourface_id_ocr/service/rest_api/domain/api_request_base.dart';
import 'package:fourface_id_ocr/service/rest_api/domain/user_response.dart';

class UserRequest extends ApiRequestBase<UserResponse> {
  UserRequest({
    required this.userId,
  });

  final int userId;

  @override
  String get path => '/userData.php';

  @override
  String get endpoint => sandboxApiEndpoint;

  @override
  Map<String, dynamic> get queryParameters => {
        'No': userId,
      };

  @override
  UserResponse parseJson(Map<String, dynamic> json) {
    return UserResponse.fromJson(json);
  }
}
