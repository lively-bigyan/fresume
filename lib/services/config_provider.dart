import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fresume/helpers/file_handler.dart';
import 'package:fresume/utils/enums.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class ConfigProvider extends ChangeNotifier {
  FontType _fontSize = FontType.normal;
  int _colorIndex = 0;
  Uint8List _image;
  final key = GlobalKey<State<StatefulWidget>>();

  FontType get name => _fontSize;
  int get colorIndex => _colorIndex;
  Uint8List get image => _image;
  bool isExporting = false;

  setFontSize(FontType val) {
    _fontSize = val;
    notifyListeners();
  }

  setColor(int val) {
    _colorIndex = val;
    notifyListeners();
  }

  setImage(Uint8List data) {
    _image = data;
    notifyListeners();
  }

  generateImage() async {
    final _image =
        key.currentContext.findRenderObject() as RenderRepaintBoundary;
    final _convertedImage = await _image.toImage(pixelRatio: 3);
    final byteData =
        await _convertedImage.toByteData(format: ui.ImageByteFormat.png);
    return byteData.buffer.asUint8List();
  }

  void exportPdf() async {
    isExporting = true;
    notifyListeners();
    final pdf = pw.Document();
    final image = await generateImage();
    final memImage = pw.MemoryImage(image);
    pdf.addPage(
      pw.Page(
          pageFormat: PdfPageFormat.a4,
          build: (context) {
            return pw.Image(memImage);
          }),
    );
    final pdfBytes = await pdf.save();
    FileHandler.download(pdfBytes, downloadName: "resume.pdf");
    isExporting = false;
    notifyListeners();
  }
}
