import 'package:geolocator/geolocator.dart';
import 'package:hr/core/status/status.dart';
import 'package:hr/core/utils/functions/execute_and_handle_remote_errors.dart';

import '../../../login/data/models/user_model.dart';
import '../../domain/repositories/record_time_repositories.dart';
import '../datasources/home_remote_data_source.dart';

class RecordTimeRepositoriesImp extends RecordTimeRepositories {
  const RecordTimeRepositoriesImp(this.remoteDataSource);
  final HomeRemoteDataSource remoteDataSource;

  @override
  Future<Status<UserModel>> recordTime({
    required Map<String, dynamic> deviceInfo,
    required Position position,
  }) async {
    return executeAndHandleErrors<UserModel>(
      () => remoteDataSource.recordTime(),
    );
  }
}
