import 'package:fourface_id_ocr/utils/environment.dart';
import 'package:get_it/get_it.dart';

enum HttpMethod {
  get,
  put,
  post,
  delete,
}

abstract class ApiRequestBase<R> {
  /// Httpメソッド
  HttpMethod get method => HttpMethod.get;

  /// URL
  String get url => '$endpoint$path';

  /// エンドポイント
  String get endpoint;

  /// APIパス
  String get path;

  /// ヘッダー
  Map<String, String> get headers => {
        ...commonHeaders,
      };

  /// params
  Map<String, dynamic> get queryParameters => {};

  /// リクエストボディ
  Map<String, dynamic> get body => {};

  R parseJson(Map<String, dynamic> json);

  Map<String, String> get commonHeaders => {
        'X-App-User-Agent': GetIt.I.get<Environment>().userAgent,
        'Content-Type': 'application/json;charset=UTF-8',
        'Charset': 'utf-8',
      };

  String get sandboxApiEndpoint => GetIt.I.get<Environment>().sandboxApiEndpoint;
}
