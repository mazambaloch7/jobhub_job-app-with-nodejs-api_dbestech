import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/common/exports.dart';

class CustomOutlineBtn extends StatelessWidget {
  const CustomOutlineBtn({
    super.key,
    this.width,
    this.height,
    required this.text,
    this.onTap,
    required this.color1,
    this.color2,
  });

  final double? width;
  final double? height;
  final String text;
  final void Function()? onTap;
  final Color color1;
  final Color? color2;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color2,
            border: Border.all(
              width: 1,
              color: color1,
            )),
        child: Center(
          child: ReusableText(
            text: text,
            style: appstyle(16, color1, FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
