import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/common/exports.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ReusableText(
          text: text,
          style: appstyle(20, Color(kDark.value), FontWeight.w500),
        ),
        GestureDetector(
          onTap: onTap,
          child: ReusableText(
            text: "View all",
            style: appstyle(20, Color(kOrange.value), FontWeight.w500),
          ),
        )
      ],
    );
  }
}
