import 'package:flutter/material.dart';
import 'package:task1_algoriza/components/custom_btn.dart';
import 'package:task1_algoriza/components/custom_page_view.dart';
import 'package:task1_algoriza/components/custom_text.dart';
import 'package:task1_algoriza/constants/String.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height: height * 0.06,
                width: width * 0.18,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.brown[100]),
                child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed(loginScreen);
                    },
                    child: const CustomText(txt: 'Skip', fontSize: 15)),
              ),
            ),
            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    isLastPage = index == 2;
                  });
                },
                children: const [
                  CustomPageView(
                    imgUrl: 'assets/images/onBoarding1.png',
                    text1: 'Get food delivery to your doorstep asap',
                    text2:
                        'We have young and professional delivery \nteam that will bring your food as soon as\n  possible to your doorstep',
                  ),
                  CustomPageView(
                    imgUrl: 'assets/images/onBoarding2.png',
                    text1: 'Buy any food from your favorite restaurant',
                    text2:
                        'We are constantly adding your favorite\n restaurant throughout the territory and around \n your area carefully selected ',
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 2,
              onDotClicked: (index) {
                controller.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                );
              },
              effect: CustomizableEffect(
                  activeDotDecoration: DotDecoration(
                      color: Colors.purple,
                      height: height * 0.01,
                      width: width * 0.04,
                      borderRadius: BorderRadius.circular(10)),
                  dotDecoration: DotDecoration(
                      color: Colors.grey,
                      height: height * 0.01,
                      width: width * 0.04,
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            CustomBtn(
                txt: 'Get Started',
                color: Colors.teal,
                textColor: Colors.white,
                onPress: () {
                  Navigator.of(context).pushNamed(loginScreen);
                }),
            SizedBox(
              height: height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  txt: "Don't have an account?",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(registerScreen);
                    },
                    child: const CustomText(
                      txt: 'Sign Up',
                      fontSize: 15,
                      color: Colors.blue,
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
