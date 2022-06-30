import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task1_algoriza/components/custom_text.dart';

class OutlinedBorderBtn extends StatelessWidget {
  const OutlinedBorderBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          minimumSize: Size(double.infinity, height * 0.07),
          side: const BorderSide(color: Colors.blue)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Google.png'),
          SizedBox(
            width: width * 0.02,
          ),
          const CustomText(
            txt: 'Sign In With Google',
            fontSize: 17,
            color: Colors.blue,
          )
        ],
      ),
    );
  }
}
