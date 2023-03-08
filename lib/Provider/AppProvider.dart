import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class AppProvider extends ChangeNotifier {
  bool isDark = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  GlobalKey<FormState> signinKey = GlobalKey();
  GlobalKey<FormState> signupKey = GlobalKey();

  final List<Locale> languages = [const Locale('en'), const Locale('ar')];
  int local = 0;
  Locale getLocale() {
    return languages[local];
  }

  setLocaleFromButton() {
    local = (local + 1) % languages.length;
    notifyListeners();
  }

  setDarkMode() {
    isDark = !isDark;
    notifyListeners();
  }

  String? passwordValidation(String password) {
    if (password == null || password.isEmpty) {
      return "Required field".tr();
    } else if (password.length <= 6) {
      return 'Error, the password must be larger than 6 letters'.tr();
    }
  }

  String? requiredValidation(String content) {
    if (content == null || content.isEmpty) {
      return "Required field".tr();
    }
  }

  String? phoneValidation(String? content) {
    if (content == null || content.isEmpty) {
      return 'Required field'.tr();
    }
    if (!isNumeric(content)) {
      return "InCorrect phone number syntax";
    }
  }

  String? emailValidation(String? email) {
    if (email == null || email.isEmpty) {
      return 'Required field'.tr();
    } else if (!isEmail(email)) {
      return 'Enter A valid Email'.tr();
    }
  }
}
