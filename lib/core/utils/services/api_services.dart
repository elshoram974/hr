import 'dart:async';

import 'package:dio/dio.dart';

class APIServices {
  const APIServices(this._dio);
  final Dio _dio;

  Future<Map<String, dynamic>> post(
    final String link,
    final Map<String, String?> body,
  ) async {
    Response<Map<String,dynamic>> response = await _dio.post(link, data: body);

    if (response.statusCode != 200) {
      throw response.statusMessage!;
    }

    return response.data!;
  }
}
