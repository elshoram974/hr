import 'package:geolocator/geolocator.dart';
import 'package:hr/core/status/status.dart';

import '../../../login/data/models/user_model.dart';

abstract class RecordTimeRepositories {
  const RecordTimeRepositories();

  Future<Status<UserModel>> recordTime({
    required Map<String, dynamic> deviceInfo,
    required Position position,
  });
}
