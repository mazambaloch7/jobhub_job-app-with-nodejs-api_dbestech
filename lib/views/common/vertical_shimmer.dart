
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_nodejs_app/views/common/exports.dart';

class VerticalShimmer extends StatelessWidget {
  const VerticalShimmer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: [
        ShimmerEffect(
            curve: Curves.easeInBack,
            duration: const Duration(seconds: 7),
            colors: [
              Color(kLightGrey.value),
              Color(kLightBlue.value),
              Color(kLightGrey.value),
            ]),
      ],
      child: Container(
       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        height: hieght * 0.15,
        width: width,
        color: Color(kLightGrey.value),
        
      ),
    );
  }
}
