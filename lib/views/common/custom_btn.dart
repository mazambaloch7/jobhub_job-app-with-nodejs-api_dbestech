import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/common/exports.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.color,
  });

  final void Function() onTap;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Color(kOrange.value),
        width: width,
        height: hieght * 0.065,
        child: Center(
          child: ReusableText(
            text: text,
            style: appstyle(16, color ?? Color(kLight.value), FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
