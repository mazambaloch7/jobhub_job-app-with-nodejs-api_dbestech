import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/constants/app_constants.dart';
import 'package:flutter_nodejs_app/views/common/app_style.dart';
import 'package:flutter_nodejs_app/views/common/height_spacer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width,
        height: hieght,
        color: Color(kDarkBlue.value),
        child: Column(
          children: <Widget>[
            const HeightSpacer(size: 65),
            Padding(
              padding: EdgeInsets.all(8.h),
              child: Image.asset('assets/images/page2.png'),
            ),
            const HeightSpacer(size: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Stable Yourself \n With Your Ability',
                  textAlign: TextAlign.center,
                  style: appstyle(30, Color(kLight.value), FontWeight.w500),
                ),
                const HeightSpacer(size: 10),
                Padding(
                  padding: EdgeInsets.all(8.h),
                  child: Text(
                    'We help you find your dream job according to your skillset location and preference to build your career',
                    textAlign: TextAlign.center,
                    style: appstyle(14, Color(kLight.value), FontWeight.w500),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
