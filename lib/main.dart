import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fresume/resume_app.dart';
import 'package:fresume/services/config_provider.dart';
import 'package:fresume/utils/theme/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ConfigProvider>(
      create: (context) => ConfigProvider(),
      builder: (context, child) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: MaterialApp(
            theme: Themes(context).lightTheme,
            home: ResumeApp(),
          ),
        );
      },
    );
  }
}
