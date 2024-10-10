import 'dart:io';

import 'package:get/get.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/functions/show_my_snack_bar.dart';

import '../../../login/domain/entities/user_entity.dart';

abstract class HomeController extends GetxController {
  final UserEntity user;
  HomeController(this.user);

  DateTime? startDate;
  DateTime? endDate;

  // bool isStartTimeLoading = false;
  // bool isEndTimeLoading = false;

  bool showStatusCard = false;

  bool isDayEnded = false;

  void closeStatusDialog([bool isDayEnded = false]);
  void recordTime();

  void onPopInvoked();
}

class HomeControllerImp extends HomeController {
  HomeControllerImp(super.user);

  @override
  void closeStatusDialog([bool isDayEnded = false]){
    showStatusCard = false;
    this.isDayEnded = isDayEnded;
    update();
  }

  @override
  void recordTime() {
    if (endDate != null) return;
    if (startDate == null) {
      // isStartTimeLoading = true;
      // update();
      startDate = DateTime.now();
    } else {
      final DateTime tempDate = DateTime.now();
      int duration = tempDate.difference(startDate!).inMinutes;
      if (duration > 60) {
        ShowMySnackBar.call(
          S.current.timeMustBeMoreThan60Minutes,
          backgroundColor: Get.theme.colorScheme.error,
        );
        return;
      }
      // isEndTimeLoading = true;
      // update();

      endDate = tempDate;
    }

    // isEndTimeLoading = false;
    // isStartTimeLoading = false;
    showStatusCard = true;
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
