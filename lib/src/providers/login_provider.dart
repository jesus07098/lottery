import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  GlobalKey<FormState> formLoginKey = GlobalKey<FormState>();
  String username;
  String password;
  bool visiblePassword = true;

  bool validateForm() {
    return formLoginKey.currentState.validate();
  }

  visibilityPassword() {
    visiblePassword = !visiblePassword;
    notifyListeners();
  }
}
