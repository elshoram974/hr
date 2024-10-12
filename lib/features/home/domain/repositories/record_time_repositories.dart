import 'package:geolocator/geolocator.dart';
import 'package:hr/core/status/status.dart';

import '../../../login/domain/entities/user_entity.dart';

abstract class RecordTimeRepositories {
  const RecordTimeRepositories();

  Future<Status<UserEntity>> recordTime({
    required Map<String, dynamic> deviceInfo,
    required Position position,
  });
}
