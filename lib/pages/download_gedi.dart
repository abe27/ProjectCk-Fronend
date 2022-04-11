import 'package:flutter/material.dart';

class DownloadGediPage extends StatefulWidget {
  const DownloadGediPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<DownloadGediPage> createState() => DownloadGediPageWidget();
}

class DownloadGediPageWidget extends State<DownloadGediPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
    );
  }
}
