import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin LoginMixin<T extends ConsumerStatefulWidget> on State<T> {
  bool isPasswordField = true;
  bool rememberMe = false;
  void togglePasswordVisibility() {
    setState(() {
      isPasswordField = !isPasswordField;
    });
  }
     void signUp() {
    // Kayıt olma işlemleri burada yapılacak
  }
  void toggleRememberMe(bool? value) {
    setState(() {
      rememberMe = value ?? false;
    });
  }
  void forgetPassword() {}
}
