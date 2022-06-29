import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class PhoneForm extends StatelessWidget {
  PhoneForm({Key? key}) : super(key: key);

  PhoneNumber driverNumber = PhoneNumber(isoCode: 'EG');
  String phoneNumber = "";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Row(children: [
      Expanded(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.all(Radius.circular(6.0))),
          child: Container(
            padding: EdgeInsets.only(
              left: height * 0.02,
            ),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                phoneNumber = number.phoneNumber.toString();
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
              ),
              ignoreBlank: false,
              autoValidateMode: AutovalidateMode.disabled,
              hintText: "Phone number",
              selectorTextStyle: const TextStyle(color: Colors.black),
              initialValue: driverNumber,
              formatInput: false,
              keyboardType: const TextInputType.numberWithOptions(
                  signed: true, decimal: true),
              inputBorder: const OutlineInputBorder(),
            ),
          ),
        ),
      ),
    ]);
  }
}
