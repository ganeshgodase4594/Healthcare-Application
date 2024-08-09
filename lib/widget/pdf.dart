import 'dart:developer';
import 'dart:io';

import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/widgets.dart';

class SaveAndOpenDocument {
  static Future<File> savePdf({
    required String name,
    required Document pdf,
  }) async {
    final root = Platform.isAndroid
        ? await getExternalStorageDirectory()
        : await getApplicationDocumentsDirectory();

    final file = File('${root!.path}/$name');
    await file.writeAsBytes(await pdf.save());
    return file;
  }

  static Future<void> openPdf(File file) async {
    final path = file.path;
    await OpenFile.open(path);
    //ganesh
    log("ganesh");
  }
}

class SimplePdf {
  static Future<File> generatetextpdf(String text1, String text2) async {
    final pdf = Document();

    pdf.addPage(Page(build: (_) {
      return Column(children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        Text(text2,
            style: TextStyle(
              fontSize: 20,
            )),
      ]);
    }));
    final file = await SaveAndOpenDocument.savePdf(
      name: 'generated_document.pdf',
      pdf: pdf,
    );
    return file;
  }
}
