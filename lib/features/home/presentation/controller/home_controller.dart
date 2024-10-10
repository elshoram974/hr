import 'dart:io';

import 'package:get/get.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/functions/show_my_snack_bar.dart';

import '../../../login/domain/entities/user_entity.dart';

abstract class HomeController extends GetxController {
  final UserEntity user;
  HomeController(this.user);

  void onPopInvoked();
}

class HomeControllerImp extends HomeController {
  HomeControllerImp(super.user);

  
  DateTime _back = DateTime.now();

  @override
  void onPopInvoked() {
    if (DateTime.now().difference(_back) < const Duration(seconds: 2)) {
      exit(0);
    }
    ShowMySnackBar.showMySnackBar(
      S.current.pressAgainToExit,
      duration: const Duration(seconds: 2),
    );
    _back = DateTime.now();
  }
}
