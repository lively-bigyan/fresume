import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final String hint;
  final Widget prefix;
  final TextStyle style;
  final TextInputType keyboardType;
  final Function(String) validator;
  final Function(String) onChanged;

  const CustomTextfield(
      {Key key,
      this.controller,
      this.enabled = true,
      this.validator,
      this.prefix,
      this.onChanged,
      this.hint,
      this.style,
      this.keyboardType = TextInputType.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        style: (style ?? Theme.of(context).textTheme.headline6)
            .copyWith(color: Colors.white),
        cursorColor: Colors.white70,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
            enabled: enabled,
            hintText: hint,
            hintStyle: (style ?? Theme.of(context).textTheme.headline6)
                .copyWith(color: Colors.grey[300]),
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            filled: true,
            fillColor: Colors.transparent,
            focusColor: Colors.grey,
            focusedBorder: InputBorder.none),
      ),
    );
  }
}
