import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shanti/UserInterface/Widgets/CustomFormField.dart';
import '../../App_Router/App_Router.dart';
import '../../Provider/AppProvider.dart';

class SignUpScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (() {
                Provider.of<AppProvider>(context, listen: false)
                    .setLocaleFromButton();
                context.setLocale(
                    Provider.of<AppProvider>(context, listen: false)
                        .getLocale());
              }),
              icon: const Icon(
                Icons.language,
                color: Colors.blue,
              ))
        ],
        leading: IconButton(
            onPressed: () => AppRouter.router.pop(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blue,
            )),
        backgroundColor: Provider.of<AppProvider>(context).isDark
            ? Colors.black
            : Colors.white,
        elevation: 0,
      ),
      body: Consumer<AppProvider>(builder: (context, provider, x) {
        return SingleChildScrollView(
          child: Form(
            key: provider.signupKey,
            child: Column(
              children: [
                Container(
                  width: 300.w,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/imgs/logo.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                SizedBox(
                  height: 35.h,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomTextField(
                      icon: const Icon(Icons.email),
                      validation: provider.emailValidation,
                      label: 'Email'.tr(),
                      controller: provider.emailController),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomTextField(
                      icon: Icon(
                        Icons.abc,
                        color: provider.isDark ? Colors.white : Colors.black,
                      ),
                      validation: (v) => provider.requiredValidation(v ?? ''),
                      label: "First_Name".tr(),
                      controller: provider.firstnameController),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomTextField(
                      icon: Icon(
                        Icons.abc,
                        color: provider.isDark ? Colors.white : Colors.black,
                      ),
                      validation: (v) => provider.requiredValidation(v ?? ''),
                      label: "Last_Name".tr(),
                      controller: provider.lastnameController),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomTextField(
                      icon: Icon(
                        Icons.lock_open,
                        color: provider.isDark ? Colors.white : Colors.black,
                      ),
                      validation: (v) => provider.passwordValidation(v ?? ''),
                      label: "Password".tr(),
                      controller: provider.passwordController),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomTextField(
                      icon: Icon(
                        Icons.lock_open,
                        color: provider.isDark ? Colors.white : Colors.black,
                      ),
                      validation: (v) => provider.passwordValidation(v ?? ''),
                      label: "confirmPassword".tr(),
                      controller: provider.confirmPasswordController),
                ),
                ElevatedButton(
                    onPressed: () async {},
                    style: TextButton.styleFrom(
                        backgroundColor:
                            provider.isDark ? Colors.black : Colors.white,
                        elevation: 0),
                    child: Text(
                      "Sign_Up".tr(),
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 23,
                          backgroundColor:
                              provider.isDark ? Colors.black : Colors.white),
                    )),
                SizedBox(
                  height: 100.h,
                )
              ],
            ),
          ),
        );
      }),
      backgroundColor: Provider.of<AppProvider>(context).isDark
          ? Colors.black
          : Colors.white,
    );
  }
}
