import 'package:flutter/material.dart';
import 'package:resume_maker/parts/left_section.dart';
import 'package:resume_maker/parts/right_section.dart';

class ResumeApp extends StatefulWidget {
  @override
  _ResumeAppState createState() => _ResumeAppState();
}

class _ResumeAppState extends State<ResumeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 150),
              width: double.maxFinite,
              height: 1800,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xff3D99A6),
                ),
                child: IntrinsicHeight(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            LeftInputSection(),
                          ],
                        ),
                      ),
                      VerticalDivider(),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            RightSection(),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.cyan,
                  ),
                  height: 100,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
