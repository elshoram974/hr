import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/functions/show_my_snack_bar.dart';

import '../../domain/repositories/auth_repositories.dart';

abstract class LoginController extends GetxController {
  bool get isLoading;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '', password = '';

  Future<void> login();

  void onPopInvoked();
}

class LoginControllerImp extends LoginController {
  LoginControllerImp(this.repo);
  final AuthRepositories repo;
  
  bool _isLoading = false;

  @override
  bool get isLoading => _isLoading;

  @override
  Future<void> login() async {
    if (!formKey.currentState!.validate()) return;
    _isLoading = true;
    update();
    print("email :${email.trim()}");
    print("password :${password.trim()}");
    await Future.delayed(const Duration(seconds: 3));
    TextInput.finishAutofillContext();
    _isLoading = false;
    update();
  }

  DateTime _back = DateTime.now();
  @override
  void onPopInvoked() {
    if (email.trim().isNotEmpty || password.isNotEmpty) {
      if (DateTime.now().difference(_back) < const Duration(seconds: 2)) {
        exit(0);
      }
      ShowMySnackBar.showMySnackBar(
        S.current.pressAgainToExit,
        duration: const Duration(seconds: 2),
      );
      _back = DateTime.now();

      return;
    }

    exit(0);
  }
}
