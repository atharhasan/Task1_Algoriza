import 'package:flutter/material.dart';
import 'package:task1_algoriza/components/custom_btn.dart';
import 'package:task1_algoriza/components/custom_text.dart';
import 'package:task1_algoriza/components/custom_txt_form.dart';
import 'package:task1_algoriza/components/outlined_border_btn.dart';
import 'package:task1_algoriza/components/phone_form.dart';
import 'package:task1_algoriza/constants/String.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

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
                        txt: 'Register',
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
                          Icons.help,
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
                    txt: 'Email',
                    hint: 'eg.exampel@gmail.com',
                    errorMsg: 'Please Enter Your Email',
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  PhoneForm(),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  const CustomTxtForm(
                      txt: 'Password',
                      hint: 'Password',
                      passwordTxt: true,
                      isPassword: true,
                      suffixIcon: Icon(Icons.remove_red_eye),
                      errorMsg: 'Enter Password From 8 Numbers'),
                  SizedBox(height: height * 0.05),
                  CustomBtn(
                      onPress: () {},
                      color: Colors.orangeAccent,
                      textColor: Colors.white,
                      txt: 'Register'),
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
                  const OutlinedBorderBtn(),
                  SizedBox(
                    height: height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(txt: 'Has any account ? ', fontSize: 15),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(loginScreen);
                        },
                        child: const CustomText(
                          txt: 'Sign in here',
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
