import 'dart:convert';

import 'package:equatable/equatable.dart';

class FailureBody extends Equatable {
  final String status = 'Failure';
  final int code;
  final String type;
  final String message;
  // final HttpExceptionType httpExceptionType;

  const FailureBody({
    this.code = -1,
    this.type = 'unKnown',
    this.message = 'unKnownMessage',
    // this.httpExceptionType = HttpExceptionType.unknown,
  });

  factory FailureBody.fromMap(Map<String, dynamic> data) => FailureBody(
        code: data['code'] as int,
        type: data['type'] as String,
        message: data['message'] as String,
      );

  Map<String, dynamic> toMap() => {
        'status': status,
        'code': code,
        'type': type,
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [FailureBody].
  factory FailureBody.fromJson(String data) {
    return FailureBody.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [FailureBody] to a JSON string.
  String toJson() => json.encode(toMap());

  FailureBody copyWith({
    int? code,
    String? type,
    String? message,
    // HttpExceptionType? httpExceptionType,
  }) {
    return FailureBody(
      code: code ?? this.code,
      type: type ?? this.type,
      message: message ?? this.message,
      // httpExceptionType: httpExceptionType ?? this.httpExceptionType,
    );
  }

  @override
  List<Object?> get props => [code, type, message];
}
