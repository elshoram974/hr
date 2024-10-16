import 'dart:async';
import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:hr/app_info.dart';
import 'package:hr/core/status/status.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/functions/handle_response_in_controller.dart';
import 'package:hr/core/utils/functions/show_my_snack_bar.dart';
import 'package:hr/core/utils/helper/device_info_helper.dart';
import 'package:hr/core/utils/helper/geolocator_helper.dart';
import 'package:hr/core/utils/helper/network_helper.dart';

import '../../../login/data/models/user_model.dart';
import '../../domain/repositories/record_time_repositories.dart';

abstract class HomeController extends GetxController {
  UserModel user;
  final RecordTimeRepositories repo;
  HomeController({required this.user, required this.repo});

  DateTime? get startDate => user.startDate;
  DateTime? get endDate => user.endDate;

  bool isStartTimeLoading = false;
  bool isEndTimeLoading = false;

  bool get isLoading => isStartTimeLoading || isEndTimeLoading;

  bool showStatusCard = false;

  bool isDayEnded = false;

  Future<void> setLocation();

  void closeStatusDialog([bool isDayEnded = false]);
  void recordTime();

  void onPopInvoked();
}

class HomeControllerImp extends HomeController {
  HomeControllerImp({required super.user, required super.repo});

  Position? _position;

  @override
  Future<void> setLocation() async {
    _position = await GeolocatorHelper.handlePermission();
  }

  @override
  void onInit() {
    showStatusCard = startDate != null;
    super.onInit();
  }

  @override
  void closeStatusDialog([bool isDayEnded = false]) {
    showStatusCard = false;
    this.isDayEnded = isDayEnded;
    update();
  }

  @override
  void recordTime() async {
    if (NetworkInfo.showSnackBarWhenNoInternet) return;

    final List<dynamic> data = await Future.wait(
      [
        DeviceInfoHelper.getDeviceInfo(),
        setLocation(),
      ],
    );

    if (_position == null) return;

    if (endDate != null) return;
    final Status<UserModel> status;

    if (startDate == null) {
      isStartTimeLoading = true;
      update();
      // user = user.setStartDate(DateTime.now());
      status = await repo.recordTime(
        deviceInfo: data[0],
        position: _position!,
      );
    } else {
      final DateTime tempDate = DateTime.now();
      int duration = tempDate.difference(startDate!).inMinutes;
      if (duration < 60 && !AppInfo.isDebugMode) {
        ShowMySnackBar.call(
          S.current.timeMustBeMoreThan60Minutes,
          backgroundColor: Get.theme.colorScheme.error,
        );
        return;
      }
      isEndTimeLoading = true;
      update();

      // user = user.setEndDate(tempDate);
      status = await repo.recordTime(
        deviceInfo: data[0],
        position: _position!,
      );
    }

    handleResponseInController<UserModel>(
      status: status,
      onSuccess: (data) {
        user = data;
        showStatusCard = true;
      },
    );

    isEndTimeLoading = false;
    isStartTimeLoading = false;

    _position = null;
    update();
  }

  DateTime _back = DateTime.now();
  @override
  void onPopInvoked() {
    if (DateTime.now().difference(_back) < const Duration(seconds: 2)) {
      exit(0);
    }
    ShowMySnackBar.call(
      S.current.pressAgainToExit,
      duration: const Duration(seconds: 2),
    );
    _back = DateTime.now();
  }
}
