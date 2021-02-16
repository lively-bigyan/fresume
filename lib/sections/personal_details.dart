import 'package:flutter/material.dart';
import 'package:fresume/components/custom_textfield.dart';

class PersonalDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        CustomTextfield(
          hint: "Address",
        ),
        CustomTextfield(
          hint: "Date of Birth",
        ),
        const SizedBox(height: 50),
        CustomTextfield(
          hint: "Email",
        ),
        CustomTextfield(
          hint: "Contact",
        ),
      ],
    );
  }
}
