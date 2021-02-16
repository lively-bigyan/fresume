import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fresume/sections/control_header.dart';
import 'package:fresume/sections/personal_details.dart';
import 'package:fresume/sections/top_row.dart';
import 'package:fresume/services/config_provider.dart';
import 'package:fresume/utils/constants.dart';
import 'package:provider/provider.dart';

class ResumeApp extends StatefulWidget {
  @override
  _ResumeAppState createState() => _ResumeAppState();
}

class _ResumeAppState extends State<ResumeApp> {
  @override
  Widget build(BuildContext context) {
    final config = context.watch<ConfigProvider>();
    return Scaffold(
      extendBody: true,
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 200, vertical: 150),
              width: double.maxFinite,
              height: 1800,
              child: RepaintBoundary(
                key: config.key,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Constants.colors[config.colorIndex],
                  ),
                  child: ListView(
                    children: [
                      TopRow(),
                      Row(
                        children: [
                          Expanded(flex: 3, child: PersonalDetails()),
                          Expanded(flex: 8, child: Container())
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 100,
            right: 100,
            height: 100,
            child: ControlHeader(),
          ),
        ],
      ),
    );
  }
}
