import 'package:flutter/material.dart';

class GediTextView extends StatefulWidget {
  const GediTextView({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<GediTextView> createState() => GediTextViewWidget();
}

class GediTextViewWidget extends State<GediTextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: const Center(
          child: Text("test read GEDI"),
        ));
  }
}
