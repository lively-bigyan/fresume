import 'package:flutter/material.dart';
import 'package:resume_maker/resume_app.dart';
import 'package:resume_maker/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes(context).lightTheme,
      home: ResumeApp(),
    );
  }
}
