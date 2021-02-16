import 'package:flutter/material.dart';
import 'package:fresume/components/custom_textfield.dart';
import 'package:fresume/helpers/file_handler.dart';
import 'package:fresume/services/config_provider.dart';
import 'package:provider/provider.dart';

class TopRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: InkWell(
              onTap: () async {
                final imageData = await FileHandler().pickPhoto();
                if (imageData != null) {
                  Provider.of<ConfigProvider>(context, listen: false)
                      .setImage(imageData);
                }
              },
              child: Consumer<ConfigProvider>(builder: (context, model, child) {
                return Container(
                  height: 240,
                  width: 240,
                  decoration: (model.image != null)
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: MemoryImage(model.image),
                          ),
                        )
                      : BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white70,
                        ),
                  child: (model.image != null)
                      ? const SizedBox()
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_a_photo,
                              color: Colors.grey,
                              size: 40,
                            ),
                            Text("Add a photo.")
                          ],
                        ),
                );
              }),
            ),
          ),
          VerticalDivider(
              endIndent: 20,
              indent: 20,
              color: Colors.white60,
              width: 50,
              thickness: 4),
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomTextfield(
                    style: Theme.of(context).textTheme.headline3,
                    hint: "Your Name"),
                CustomTextfield(
                    style: Theme.of(context).textTheme.headline5,
                    hint: "Your Profession"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
