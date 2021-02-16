import 'package:flutter/material.dart';

class CustomColorContainer extends StatelessWidget {
  final Color color;

  const CustomColorContainer({Key key, @required this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 24,
      width: 24,
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        color: color,
      ),
    );
  }
}
