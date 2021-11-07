import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

class DownloadImage extends StatefulWidget {
  const DownloadImage({Key? key}) : super(key: key);

  @override
  _DownloadImageState createState() => _DownloadImageState();
}

class _DownloadImageState extends State<DownloadImage> {
  bool _isCheckDownload = true;
  var imageUrl =
      'https://ae01.alicdn.com/kf/HTB1ayvsOVXXXXcKXFXXq6xXFXXXy/T-y-Ch-nh-V-i-One-Piece-Poster-One-Piece-Anime-D-n-T-ng.jpg';
  String savePath = "";
  double percentDownload = 0;
  String err = '';

  Future<String> getFilePath(uniqueFileName) async {
    String path = '';

    Directory dir = await getApplicationDocumentsDirectory();

    path = '${dir.path}/$uniqueFileName';

    return path;
  }

  Future downloadFile() async {
    try {
      Dio dio = Dio();

      String fileName = imageUrl.substring(imageUrl.lastIndexOf("/") + 1);

      savePath = await getFilePath(fileName);

      await dio.download(imageUrl, savePath, onReceiveProgress: (rec, total) {
        setState(() {
          _isCheckDownload = true;
          percentDownload = (rec / total) * 100;
          // print('${percentDownload.floor()}');
        });
      });
      setState(() {
        _isCheckDownload = false;
      });
    } catch (e) {
      err = e.toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Download image'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _isCheckDownload
                  ? Container(
                      width: 300,
                      height: 300,
                      color: Colors.transparent,
                      child: const Center(
                        child: Text('No image'),
                      ),
                    )
                  : FutureBuilder(
                      future: File(savePath).exists(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        List<Widget> children;
                        if (snapshot.hasData) {
                          children = [
                            _isCheckDownload
                                ? const SizedBox(
                                    width: 300,
                                    height: 300,
                                  )
                                : Container(
                                    width: 300,
                                    height: 300,
                                    color: Colors.transparent,
                                    child: Image.file(
                                      File(savePath),
                                    ),
                                  ),
                          ];
                        } else if (snapshot.hasError) {
                          children = [
                            const Icon(
                              Icons.error_outline,
                              color: Colors.red,
                              size: 60,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 16),
                              child: Text('Error: ${snapshot.error}'),
                            )
                          ];
                        } else {
                          children = [
                            SizedBox(
                              width: 300,
                              height: 300,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('${percentDownload.floor()}%'),
                                  SizedBox(
                                    width: 150,
                                    height: 15,
                                    child: LinearProgressIndicator(
                                      value: percentDownload / 100,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ];
                        }
                        return SizedBox(
                          width: 300,
                          height: 300,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: children,
                          ),
                        );
                      },
                    ),
            ),
            ElevatedButton(
              onPressed: () {
                downloadFile();
              },
              child: const Text('Download now'),
            ),
          ],
        ),
      ),
    );
  }
}
