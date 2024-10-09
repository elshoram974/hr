import 'dart:async';

import 'package:dio/dio.dart';

class APIServices {
  const APIServices(this.dio);
  final Dio dio;

  Future<Map<String, dynamic>> post(
    final String link,
    final Map<String, String?> body,
  ) async {
    Response<Map<String,dynamic>> response = await dio.post(link, data: body);

    if (response.statusCode != 200) {
      throw response.statusMessage!;
    }

    return response.data!;
  }
}
