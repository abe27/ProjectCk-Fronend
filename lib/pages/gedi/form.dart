import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class GediForm extends StatefulWidget {
  const GediForm({Key? key, required this.title, required this.tooltip})
      : super(key: key);
  final String title;
  final String tooltip;
  @override
  State<GediForm> createState() => GediFormWidget();
}

class GediFormWidget extends State<GediForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(title: Text(widget.title), actions: <Widget>[
          Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  tooltip: widget.tooltip,
                  icon: const Icon(Ionicons.save_outline))),
        ]),
        body: Container());
  }
}
