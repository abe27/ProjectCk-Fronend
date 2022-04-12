import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../components/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => HomePageWidget();
}

class HomePageWidget extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(widget.title),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                tooltip: "ข้อความแจ้งเตือน",
                icon: const Icon(Ionicons.notifications_outline)),
            IconButton(
                onPressed: () {},
                tooltip: "ข้อมูลผู้ใช้งาน",
                icon: const Icon(Ionicons.person_outline)),
            IconButton(
                icon: const Icon(Ionicons.ellipsis_vertical_outline),
                tooltip: 'แผงควบคุมระบบ',
                onPressed: () {})
          ],
        ),
        drawer: const DrawerWidget());
  }
}
