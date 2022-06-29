import 'package:flutter/material.dart';
import 'package:task1_algoriza/widgets/custom_text.dart';

class CustomTxtForm extends StatelessWidget {
  const CustomTxtForm(
      {Key? key,
      required this.txt,
      required this.hint,
      this.passwordTxt,
      required this.errorMsg})
      : super(key: key);
  final String txt;
  final String hint;
  final String errorMsg;
  final bool? passwordTxt;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(txt: txt, fontSize: 15),
        const SizedBox(
          height: 7,
        ),
        TextFormField(
          decoration: InputDecoration(
              hintText: hint,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)))),
          validator: (value) {
            if (value!.isEmpty) {
              return errorMsg;
            }
          },
          onSaved: (value) {},
        ),
      ],
    );
  }
}
