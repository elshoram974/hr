import 'package:workmanager/workmanager.dart';

import '../../../app_info.dart';
import '../constants/app_strings.dart';
import 'local_notification_services.dart';

class WorkManagerServices {
  const WorkManagerServices();
  static final Workmanager _workManager = Workmanager();
  static const String _startWorkDayName = 'Start a new work day alert';

  static Future<void> _registerTest() {
    return _workManager.registerPeriodicTask(
      'testTask',
      'test Task',
      frequency: const Duration(minutes: 16),
      constraints: Constraints(
        networkType: NetworkType.connected,
      ),
      inputData: {},
    );
  }

  static Future<void> _registerStartWorkDay() {
    return _workManager.registerPeriodicTask(
      AppString.startWorkDay,
      _startWorkDayName,
      frequency: const Duration(days: 1),
      constraints: Constraints(
        networkType: NetworkType.connected,
      ),
      inputData: {},
    );
  }

  static Future<void> cancelTask(String uniqueName) {
    return _workManager.cancelByUniqueName(uniqueName);
  }

  static Future<void> init() async {
    await _workManager.initialize(
      _actionTask,
      isInDebugMode: AppInfo.isDebugMode,
    );
    await Future.wait(
      [
        cancelTask(AppString.startWorkDay),
        cancelTask('testTask'),
      ],
    );
    await Future.wait(
      [
        _registerStartWorkDay(),
        _registerTest(),
      ],
    );
  }

  @pragma('vm:entry-point')
  static void _actionTask() {
    _workManager.executeTask(
      (taskName, inputData) async {
        switch (taskName) {
          case _startWorkDayName:
            await LocalNotificationServices.startWorkNotification();
            break;
          default:
            await LocalNotificationServices.testNotification();
        }
        return true;
      },
    );
  }
}
