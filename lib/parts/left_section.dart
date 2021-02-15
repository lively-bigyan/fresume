import 'package:flutter/material.dart';
import 'package:resume_maker/components/custom_textfield.dart';

class LeftInputSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        primary: false,
        shrinkWrap: true,
        children: [
          Text("Personal Details",
              style: Theme.of(context).primaryTextTheme.headline3),
          Row(
            children: [
              Expanded(
                child: CustomTextfield(
                  label: "Name",
                  prefix: Icon(Icons.person),
                ),
              ),
              Expanded(
                child: CustomTextfield(
                  label: "Profession",
                  prefix: Icon(Icons.work),
                ),
              ),
            ],
          ),
          CustomTextfield(
            label: "Address",
            prefix: Icon(Icons.airline_seat_individual_suite),
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextfield(
                  label: "Email",
                  prefix: Icon(Icons.mail),
                ),
              ),
              Expanded(
                child: CustomTextfield(
                  label: "Phone",
                  keyboardType: TextInputType.phone,
                  prefix: Icon(Icons.phone),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
