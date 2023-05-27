import 'package:flutter/material.dart';
import 'package:flutter_nodejs_app/views/common/exports.dart';
import 'package:flutter_nodejs_app/views/ui/onboarding/widgets/page_one.dart';
import 'package:flutter_nodejs_app/views/ui/onboarding/widgets/page_three.dart';
import 'package:flutter_nodejs_app/views/ui/onboarding/widgets/page_two.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<OnBoardNotifier>(
        builder: (context, value, child) {
          return Stack(
            children: <Widget>[
              PageView(
                controller: pageController,
                physics: value.isLastPage
                    ? const NeverScrollableScrollPhysics()
                    : const AlwaysScrollableScrollPhysics(),
                onPageChanged: (page) {
                  value.isLastPage = page == 2;
                },
                children: const <Widget>[
                  PageOne(),
                  PageTwo(),
                  PageThree(),
                ],
              ),
              Positioned(
                bottom: hieght * 0.09,
                left: 0,
                right: 0,
                child: value.isLastPage
                    ? const SizedBox.shrink()
                    : Center(
                        child: SmoothPageIndicator(
                          controller: pageController,
                          count: 3,
                          effect: WormEffect(
                            dotHeight: 12,
                            dotWidth: 12,
                            spacing: 10,
                            dotColor: Color(kDarkGrey.value).withOpacity(0.5),
                            activeDotColor: Color(kLight.value),
                          ),
                        ),
                      ),
              ),
              value.isLastPage
                  ? const SizedBox.shrink()
                  : Positioned(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20.w,
                            vertical: 30.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  pageController.animateToPage(
                                    2,
                                    duration: const Duration(milliseconds: 400),
                                    curve: Curves.easeIn,
                                  );
                                },
                                child: ReusableText(
                                  text: "Skip",
                                  style: appstyle(
                                    16,
                                    Color(kLight.value),
                                    FontWeight.w500,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  pageController.nextPage(
                                    duration: const Duration(milliseconds: 350),
                                    curve: Curves.easeInOut,
                                  );
                                },
                                child: ReusableText(
                                  text: "Next",
                                  style: appstyle(
                                    16,
                                    Color(kLight.value),
                                    FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ],
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
