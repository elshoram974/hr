import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  bool get isLoading;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String email = '', password = '';

  Future<void> login();
}

class LoginControllerImp extends LoginController {
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
}
