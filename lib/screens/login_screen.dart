import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task1_algoriza/constants/String.dart';
import 'package:task1_algoriza/screens/register_screen.dart';
import 'package:task1_algoriza/widgets/custom_btn.dart';
import 'package:task1_algoriza/widgets/custom_text.dart';
import 'package:task1_algoriza/widgets/custom_txt_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.3,
              width: double.infinity,
              child: Image.asset(
                'assets/images/image.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    txt: 'Welcom to Fashion Daily',
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CustomText(
                        txt: 'Sign In',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                      ),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: 'Help',
                            style: TextStyle(color: Colors.blue, fontSize: 15)),
                        WidgetSpan(
                            child: Icon(
                          Icons.question_mark_outlined,
                          color: Colors.blue,
                          size: 15,
                        ))
                      ])),
                    ],
                  ),
                  SizedBox(
                    height: height * 0.04,
                  ),
                  const CustomTxtForm(
                      txt: 'Phone Number',
                      hint: '010000000000',
                      errorMsg: 'Please Enter Your Phone Number'),
                  SizedBox(height: height * 0.05),
                  const CustomBtn(
                    txt: 'Sign In',
                    color: Colors.blue,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const Center(
                    child: CustomText(
                      txt: 'OR',
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  const CustomBtn(
                    txt: 'Sign In With Google',
                    color: Colors.white,
                    textColor: Colors.blue,
                  ),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(
                          txt: " Doesn't has any account ? ", fontSize: 15),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(registerScreen);
                        },
                        child: const CustomText(
                          txt: 'Register here',
                          fontSize: 15,
                          color: Colors.blue,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
