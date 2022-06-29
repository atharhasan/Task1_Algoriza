import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task1_algoriza/widgets/custom_text.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return PageView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.2,
              ),
              Image.asset('assets/images/onBoarding1.png'),
              SizedBox(
                height: height * 0.05,
              ),
              const CustomText(
                txt: 'Get food delivery to your door Step asape',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const CustomText(
                txt: 'We have young and profesional delivery',
                fontSize: 12,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.2,
              ),
              Image.asset('assets/images/onBoarding2.png'),
              SizedBox(
                height: height * 0.05,
              ),
              const CustomText(
                txt: 'Buy any food from your favorite restaurant',
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const CustomText(
                txt: 'We have young and profesional delivery',
                fontSize: 12,
                color: Colors.grey,
              ),
            ],
          ),
        )
      ],
    );
  }
}
