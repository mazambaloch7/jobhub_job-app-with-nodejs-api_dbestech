import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/common/exports.dart';
import 'package:flutter_nodejs_app/views/common/height_spacer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: hieght,
        color: Color(kDarkPurple.value),
        child: Column(
          children: <Widget>[
            const HeightSpacer(size: 70),
            Image.asset('assets/images/page1.png'),
            const HeightSpacer(size: 40),
            Column(
              children: <Widget>[
                ReusableText(
                  text: 'Find Your Dream Job',
                  style: appstyle(30, Color(kLight.value), FontWeight.w500),
                ),
                const HeightSpacer(size: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                  child: Text(
                    'We help you find your dream job according to your skillset location and preference to build your career',
                    style: appstyle(14, Color(kLight.value), FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
