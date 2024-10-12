import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:hr/app_info.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/functions/show_my_snack_bar.dart';
import 'package:hr/core/utils/helper/device_info_helper.dart';
import 'package:hr/core/utils/helper/geolocator_helper.dart';

import '../../../login/domain/entities/user_entity.dart';

abstract class HomeController extends GetxController {
  UserEntity user;
  HomeController(this.user);

  DateTime? get startDate => user.startDate;
  DateTime? get endDate => user.endDate;

  // bool isStartTimeLoading = false;
  // bool isEndTimeLoading = false;

  bool showStatusCard = false;

  bool isDayEnded = false;

  Future<void> setLocation();

  void closeStatusDialog([bool isDayEnded = false]);
  void recordTime();

  void onPopInvoked();
}

class HomeControllerImp extends HomeController {
  HomeControllerImp(super.user);

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
    final Future<List<dynamic>> data = Future.wait(
      [
        DeviceInfoHelper.getDeviceInfo(),
        setLocation(),
      ],
    );

    if (_position == null) return;

    if (endDate != null) return;

    if (startDate == null) {
      // isStartTimeLoading = true;
      // update();
      user = user.setStartDate(DateTime.now());
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
      // isEndTimeLoading = true;
      // update();

      user = user.setEndDate(tempDate);
    }

    // isEndTimeLoading = false;
    // isStartTimeLoading = false;
    showStatusCard = true;
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
