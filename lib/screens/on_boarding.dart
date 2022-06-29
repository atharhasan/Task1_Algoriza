import 'package:flutter/material.dart';
import 'package:task1_algoriza/constants/String.dart';
import 'package:task1_algoriza/widgets/custom_btn.dart';
import 'package:task1_algoriza/widgets/custom_page_view.dart';
import 'package:task1_algoriza/widgets/custom_text.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          CustomPageView(),
          Positioned(
              top: height * 0.1,
              right: height * 0.04,
              child: Container(
                  height: height * 0.06,
                  width: width * 0.24,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                      child: CustomText(txt: 'Skip', fontSize: 15)))),
          Positioned(
            bottom: height * 0.15,
            right: width * 0.05,
            left: width * 0.05,
            child: CustomBtn(
              txt: 'Next',
              color: Colors.teal,
              onPress: () {
                Navigator.of(context).pushNamed(loginScreen);
              },
            ),
          )
        ],
      ),
    );
  }
}
