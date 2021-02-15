import 'package:flutter/material.dart';

class RightSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.camera_alt, color: Colors.grey),
                ),
                VerticalDivider(
                  endIndent: 20,
                  indent: 20,
                  color: Colors.white60,
                  width: 50,
                  thickness: 4,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Bigyan Ghimire",
                          style: Theme.of(context).primaryTextTheme.headline1),
                      Text("Flutter Developer",
                          style: Theme.of(context).primaryTextTheme.headline3),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
