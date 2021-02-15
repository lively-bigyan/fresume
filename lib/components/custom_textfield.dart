import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final String label;
  final Widget prefix;
  final TextInputType keyboardType;
  final Function(String) validator;

  const CustomTextfield(
      {Key key,
      this.controller,
      this.enabled = true,
      this.label,
      this.validator,
      this.prefix,
      this.keyboardType = TextInputType.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.white,
            boxShadow: [
              if (enabled)
                BoxShadow(
                    color: Colors.white.withOpacity(0.5),
                    blurRadius: 4,
                    offset: Offset(0, 2)),
            ]),
        child: TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
              prefixIcon: prefix ?? const SizedBox(),
              enabled: enabled,
              labelText: label,
              labelStyle: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.grey[700]),
              border: InputBorder.none,
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ),
      ),
    );
  }
}
