import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fresume/components/custom_color_container.dart';
import 'package:fresume/services/config_provider.dart';
import 'package:fresume/utils/constants.dart';
import 'package:provider/provider.dart';

class ControlHeader extends StatefulWidget {
  @override
  _ControlHeaderState createState() => _ControlHeaderState();
}

class _ControlHeaderState extends State<ControlHeader> {
  @override
  Widget build(BuildContext context) {
    final config = context.watch<ConfigProvider>();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(60),
        ),
        gradient: LinearGradient(colors: [
          Colors.grey[800],
          Constants.colors[config.colorIndex],
        ], begin: Alignment.centerLeft, end: Alignment.centerRight),
      ),
      child: Center(
        child: Row(
          children: [
            PopupMenuButton(
              tooltip: "Pick Color",
              elevation: 5,
              onSelected: (choice) => config.setColor(choice),
              icon: CustomColorContainer(
                  color: Constants.colors[config.colorIndex]),
              itemBuilder: (context) {
                return Constants.colors
                    .map((color) => PopupMenuItem(
                        value: color,
                        mouseCursor: MouseCursor.defer,
                        child: Center(
                            child: CustomColorContainer(
                          color: color,
                        ))))
                    .toList();
              },
            ),
            Spacer(),
            config.isExporting
                ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  )
                : IconButton(
                    icon: Icon(Icons.save_alt, color: Colors.white70),
                    tooltip: "Save as PDF",
                    onPressed: () => config.exportPdf(),
                  ),
          ],
        ),
      ),
    );
  }
}
