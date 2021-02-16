import 'dart:convert';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';

class FileHandler {
  static void download(
    List<int> bytes, {
    String downloadName,
  }) {
    // Encode our file in base64
    final _base64 = base64Encode(bytes);
    // Create the link with the file
    final anchor =
        AnchorElement(href: 'data:application/octet-stream;base64,$_base64')
          ..target = 'blank';
    // add the name
    if (downloadName != null) {
      anchor.download = downloadName;
    } else {
      anchor.download = DateTime.now().toIso8601String() + ".pdf";
    }
    // trigger download
    document.body.append(anchor);
    anchor.click();
    anchor.remove();
    return;
  }

  Future<Uint8List> pickPhoto() async {
    FilePickerResult result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.image);
    return result?.files[0]?.bytes;
  }
}
