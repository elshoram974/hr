import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hr/core/status/errors/failure.dart';
import 'package:hr/core/status/status.dart';
import 'package:hr/core/status/success/success.dart';
import 'package:hr/core/utils/config/locale/generated/l10n.dart';
import 'package:hr/core/utils/config/routes/routes.dart';
import 'package:hr/core/utils/functions/show_my_snack_bar.dart';

import '../../domain/entities/user_entity.dart';
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
    print("email :${email.trim()}");
    print("password :${password.trim()}");
    _isLoading = true;
    update();
    final Status<UserEntity> loginState = await repo.login(
      email: email,
      password: password,
    );
    if (loginState is Success<UserEntity>) {
      TextInput.finishAutofillContext();
      Get.offAllNamed(AppRoute.home);
    } else if (loginState is Failure<UserEntity>) {
      ShowMySnackBar.call(
        loginState.failure.message,
      );
    }

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
      ShowMySnackBar.call(
        S.current.pressAgainToExit,
        duration: const Duration(seconds: 2),
      );
      _back = DateTime.now();

      return;
    }

    exit(0);
  }
}
