import 'package:geolocator/geolocator.dart';
import 'package:hr/core/status/status.dart';
import 'package:hr/core/utils/functions/execute_and_handle_remote_errors.dart';

import '../../../login/domain/entities/user_entity.dart';
import '../../domain/repositories/record_time_repositories.dart';

class RecordTimeRepositoriesImp extends RecordTimeRepositories {
  const RecordTimeRepositoriesImp();

  @override
  Future<Status<UserEntity>> recordTime({
    required Map<String, dynamic> deviceInfo,
    required Position position,
  }) async {
    // TODO: implement recordTime
    await Future.delayed(Duration(seconds: 5));
    return executeAndHandleErrors<UserEntity>(() async {
      return UserEntity(
        name: "Start time",
        email: "email",
        image: "",
        startDate: DateTime.now(),
      );
    });
  }
}
