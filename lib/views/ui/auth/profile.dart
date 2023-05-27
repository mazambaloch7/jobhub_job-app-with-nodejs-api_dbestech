import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/common/exports.dart';
import 'package:flutter_nodejs_app/views/common/height_spacer.dart';
import 'package:flutter_nodejs_app/views/common/width_spacer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../../common/app_bar.dart';
import '../../common/drawer/drawer_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.h),
        child: CustomAppBar(
          text: "Profile",
          child: Padding(
            padding: EdgeInsets.all(12.0.h),
            child: const DrawerWidget(),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              width: width,
              height: hieght * 0.12,
              color: Color(kLight.value),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          height: 100.h,
                          width: 80.w,
                          color: Color(kLightGrey.value),
                          imageUrl:
                              'https://media.istockphoto.com/id/1388253782/photo/positive-successful-millennial-business-professional-man-head-shot-portrait.webp?b=1&s=170667a&w=0&k=20&c=KZM6TIhdaJAy28BA9sg0Sn-ZRd160F6HytdAKykza-s=',
                        ),
                      ),
                      const WidthSpacer(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ReusableText(
                            text: "Joseph Indieka",
                            style: appstyle(
                                20, Color(kDark.value), FontWeight.w600),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                MaterialIcons.location_pin,
                                color: Color(
                                  kDarkGrey.value,
                                ),
                              ),
                              const WidthSpacer(width: 5),
                              ReusableText(
                                text: "Nairobi, KE",
                                style: appstyle(16, Color(kDarkGrey.value),
                                    FontWeight.w600),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Feather.edit,
                      size: 18,
                    ),
                  ),
                ],
              ),
            ),
            const HeightSpacer(size: 20),
            Stack(
              children: <Widget>[
                Container(
                  width: width,
                  height: hieght * 0.12,
                  color: Color(kLightGrey.value),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12.w),
                        width: 60.w,
                        height: 70.h,
                        color: Color(kLight.value),
                        child: const Icon(
                          FontAwesome5Regular.file_pdf,
                          color: Color(0xFFF44336),
                          size: 40,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ReusableText(
                            text: "Resume from JobApp",
                            style: appstyle(
                              18,
                              Color(kDark.value),
                              FontWeight.w500,
                            ),
                          ),
                          ReusableText(
                            text: "JobApp Resume",
                            style: appstyle(
                              16,
                              Color(kDarkGrey.value),
                              FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                      const WidthSpacer(width: 1),
                    ],
                  ),
                ),
                Positioned(
                  top: 2.h,
                  right: 5.w,
                  child: GestureDetector(
                    onTap: () {},
                    child: ReusableText(
                      text: "Edit",
                      style:
                          appstyle(16, Color(kOrange.value), FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
            const HeightSpacer(size: 20),
            Container(
              padding: EdgeInsets.only(left: 8.w),
              width: width,
              height: hieght * 0.06,
              color: Color(kLightGrey.value),
              child: Align(
                alignment: Alignment.centerLeft,
                child: ReusableText(
                  text: "josephI@gmail.com",
                  style: appstyle(16, Color(kDark.value), FontWeight.w600),
                ),
              ),
            ),
            const HeightSpacer(size: 20),
            Container(
              padding: EdgeInsets.only(left: 8.w),
              width: width,
              height: hieght * 0.06,
              color: Color(kLightGrey.value),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/usa.svg',
                      width: 20.w,
                      height: 20.h,
                    ),
                    const WidthSpacer(width: 15),
                    ReusableText(
                      text: "+254 7132839008",
                      style: appstyle(16, Color(kDark.value), FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            const HeightSpacer(size: 20),
            Container(
              color: Color(kLightGrey.value),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.h),
                    child: ReusableText(
                      text: "Skills",
                      style: appstyle(16, Color(kDark.value), FontWeight.w600),
                    ),
                  ),
                  const HeightSpacer(size: 3),
                  SizedBox(
                    height: hieght * 0.5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 8.h,
                      ),
                      child: ListView.builder(
                        itemCount: skills.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final skill = skills[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              width: width,
                              height: hieght * 0.06,
                              color: Color(kLight.value),
                              child: Row(
                                children: [
                                  ReusableText(
                                    text: skill,
                                    style: appstyle(16, Color(kDark.value),
                                        FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
