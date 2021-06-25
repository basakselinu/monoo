import 'dart:io';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class FileDownloadView extends StatefulWidget {
  @override
  _FileDownloadViewState createState() => _FileDownloadViewState();
}

class _FileDownloadViewState extends State<FileDownloadView> {
  String _filePath = "";

  Future<String> get _localDevicePath async {
    final _devicePath = await getApplicationDocumentsDirectory();
    return _devicePath.path;
  }

  Future<File> _localFile({String path, String type}) async {
    String _path = await _localDevicePath;

    var _newPath = await Directory("$_path/$path").create();
    return File("${_newPath.path}/cevahir.$type");
  }

  Future _downloadSamplePDF() async {
    final _response = await http.get(Uri.parse(
        "https://karsiyakahem.meb.k12.tr/meb_iys_dosyalar/35/12/165360/dosyalar/2020_01/06153213_TakiYapimi.pdf?CHK=4db359245f0e753665e9b675f6c83c0f"));
    if (_response.statusCode == 200) {
      final _file = await _localFile(path: "pdfs", type: "pdf");
      final _saveFile = await _file.writeAsBytes(_response.bodyBytes);
      print("Dosya yazma işlemi tamamlandı. Dosyanın yolu: ${_saveFile.path}");
      setState(() {
        _filePath = _saveFile.path;
      });
    } else {
      print(_response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Color(0xffd78cf2),),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.file_download,color: Color(0xffd78cf2)),
              label: Text("Örnek Pdf İndir",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xffd78cf2),
              ),),
              onPressed: () {
                _downloadSamplePDF();
              },
            ),
            SizedBox(
              height: 25.0,
            ),

            TextButton.icon(
              icon: Icon(Icons.tv,color: Color(0xffd78cf2)),
              label: Text("İndirilen Dosyayı Göster",style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xffd78cf2),
              ),),
              onPressed: () async {
                final _openFile = await OpenFile.open(_filePath);
                print(_openFile);
              },
            ),
          ],
        ),
      ),
    );
  }
}