import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:fourface_id_ocr/main.dart';
import 'package:fourface_id_ocr/service/rest_api/domain/app_exception.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'domain/api_request_base.dart';

class ApiService {
  static final _instance = ApiService._();

  static ApiService get instance => _instance;

  late final Dio _dio;

  ApiService._() {
    _dio = Dio();

    _dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }

  static Future<T> _computeJsonDecode<T>(
    Map<String, dynamic> json,
    ApiRequestBase<T> request,
  ) {
    return compute(request.parseJson, json);
  }

  Future<R> sendRequest<R>(ApiRequestBase<R> request) async {
    final url = request.url;

    Map<String, dynamic>? requestHeader = {};
    requestHeader = {
      ...request.headers,
    };

    final requestOption = Options(headers: requestHeader);

    try {
      final Response<dynamic> response;

      switch (request.method) {
        case HttpMethod.get:
          response = await _dio.get(
            url,
            queryParameters: request.queryParameters,
            options: requestOption,
          );
          break;
        case HttpMethod.post:
          final requestBody = request.body.isEmpty ? null : request.body;
          response = await _dio.post(
            url,
            data: requestBody,
            options: requestOption,
          );
          break;
        case HttpMethod.put:
          final requestBody = request.body.isEmpty ? null : request.body;
          response = await _dio.put(
            url,
            data: requestBody,
            options: requestOption,
          );
          break;
        case HttpMethod.delete:
          response = await _dio.delete(
            url,
            options: requestOption,
          );
          break;
      }

      final jsonData =  json.decode(response.data) as Map<String, dynamic>;

      final errorCodeException = _convertApiErrorCode(response.statusCode);
      if (errorCodeException != null) {
        throw errorCodeException;
      }

      final responseBody = await _computeJsonDecode<R>(jsonData, request);

      return responseBody;
    } on DioException catch (e) {
      throw _convertDioError(e);
    } on CheckedFromJsonException catch (e, stackTrace) {
      logger.e('\n❌❌❌ ${e.toString()}', e, stackTrace);

      throw AppException.undefine(
        'Json Parse Error: ${e.toString()}',
      );
    } catch (e, stackTrace) {
      logger.e('\n❌❌❌ ${e.toString()}', e, stackTrace);

      // TODO: 暫定処理
      throw AppException.undefine(e.toString());
    }
  }

  AppException _convertDioError(DioException error) {
    final response = error.response;

    if (response == null) {
      return AppException(code: 'Unknown', message: 'null response');
    }

    final statusCode = response.statusCode;

    final apiError = _convertApiErrorCode(statusCode);
    if (apiError != null) {
      return apiError;
    }

    return AppException(
      code: '9999',
      message: 'Unknown Error',
      networkStatusCode: statusCode,
    );
  }

  AppException? _convertApiErrorCode(
    int? statusCode,
  ) {
    if (200 != statusCode) {
      // TODO: 仮実装
      return AppException(
        code: '9999',
        message: 'something error',
        networkStatusCode: statusCode,
      );
    }

    return null;
  }
}
