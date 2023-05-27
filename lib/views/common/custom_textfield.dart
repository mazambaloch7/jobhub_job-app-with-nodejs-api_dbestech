import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/constants/app_constants.dart';
import 'package:flutter_nodejs_app/views/common/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText,
    this.suffixIcon,
    required this.keyboardType,
    required this.controller,
    this.validator,
  });

  final String hintText;
  final bool? obscureText;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(kLightGrey.value),
      child: TextFormField(
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon,
            hintStyle: appstyle(14, Color(kDarkGrey.value), FontWeight.w500),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.red, width: 0.5),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.transparent, width: 0),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.red, width: 0.5),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Color(kDarkGrey.value), width: 0.5),
            ),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.zero,
              borderSide: BorderSide(color: Colors.transparent, width: 0.5),
            ),
            border: InputBorder.none),
        controller: controller,
        cursorHeight: 25,
        style: appstyle(14, Color(kDark.value), FontWeight.w500),
      ),
    );
  }
}
