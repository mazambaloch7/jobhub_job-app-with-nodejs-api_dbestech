import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/common/app_bar.dart';
import 'package:flutter_nodejs_app/views/common/custom_btn.dart';
import 'package:flutter_nodejs_app/views/common/custom_textfield.dart';
import 'package:flutter_nodejs_app/views/common/exports.dart';
import 'package:flutter_nodejs_app/views/common/height_spacer.dart';
import 'package:flutter_nodejs_app/views/ui/auth/login.dart';
import 'package:flutter_nodejs_app/views/ui/mainscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<SignUpNotifier>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: CustomAppBar(
              text: "Sign Up ",
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(CupertinoIcons.arrow_left),
              ),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                const HeightSpacer(size: 50),
                ReusableText(
                  text: 'Hello, Welcome',
                  style: appstyle(
                    30,
                    Color(kDark.value),
                    FontWeight.w600,
                  ),
                ),
                ReusableText(
                  text: 'Fill in the details to login to your account',
                  style: appstyle(
                    16,
                    Color(kDarkGrey.value),
                    FontWeight.w600,
                  ),
                ),
                const HeightSpacer(size: 50),
                CustomTextField(
                  controller: name,
                  keyboardType: TextInputType.text,
                  validator: (name) {
                    if (name!.isEmpty || name.length > 3) {
                      return "Please enter a valid fullname";
                    } else {
                      return null;
                    }
                  },
                  hintText: "Fullname",
                ),
                const HeightSpacer(size: 20),
                CustomTextField(
                  controller: email,
                  keyboardType: TextInputType.emailAddress,
                  hintText: "Email",
                  validator: (email) {
                    if (email!.isEmpty ||
                        !email.contains("@") ||
                        !email.contains(".")) {
                      return "Please enter a valid email";
                    } else {
                      return null;
                    }
                  },
                ),
                const HeightSpacer(size: 20),
                CustomTextField(
                  controller: password,
                  obscureText: value.isObsecure,
                  keyboardType: TextInputType.text,
                  hintText: "Password",
                  validator: (password) {
                    if (value.passwordValidator(password ?? "")) {
                      return "Please enter a valid password";
                    } else {
                      return null;
                    }
                  },
                  suffixIcon: GestureDetector(
                    onTap: () {
                      value.isObsecure = !value.isObsecure;
                    },
                    child: Icon(
                      value.isObsecure
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Color(kDark.value),
                    ),
                  ),
                ),
                const HeightSpacer(size: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Get.to(() => const LoginPage());
                    },
                    child: ReusableText(
                      text: "Login",
                      style: appstyle(14, Color(kDark.value), FontWeight.w500),
                    ),
                  ),
                ),
                const HeightSpacer(size: 50),
                CustomButton(
                  onTap: () {
                    Get.to(() => const MainScreen());
                  },
                  text: "Register",
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
