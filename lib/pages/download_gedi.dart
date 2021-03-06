import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';

import '../components/del_dialog.dart';
import 'gedi/form.dart';
import 'gedi/text.dart';

class DownloadGediPage extends StatefulWidget {
  const DownloadGediPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<DownloadGediPage> createState() => DownloadGediPageWidget();
}

class DownloadGediPageWidget extends State<DownloadGediPage> {
  void _reloadData() {}
  var tableData = GediDataSource();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                tooltip: "นำเข้า GEDI ใหม่",
                onPressed: () async {
                  // Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const GediForm(
                                title: 'เพิ่มข้อมูล GEDI',
                                tooltip: 'บันทึกข้อมูล',
                              )));
                },
                icon: const Icon(Ionicons.add_outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
                tooltip: 'โหลดข้อมูลอีกครั้ง',
                onPressed: _reloadData,
                icon: const Icon(Ionicons.refresh_outline)),
          ),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: PaginatedDataTable(
            rowsPerPage: 20,
            columns: const [
              DataColumn(label: Text('#')),
              DataColumn(label: Text('WHS')),
              DataColumn(label: Text('Type')),
              DataColumn(label: Text('Batch ID')),
              DataColumn(label: Text('Batch File')),
              DataColumn(label: Text('Size(kb.)')),
              DataColumn(label: Text('Status')),
              DataColumn(label: Text('Last Update')),
              DataColumn(label: Text('')),
            ],
            source: tableData,
          ),
        ),
      ),
    );
  }
}

class GediDataSource extends DataTableSource {
  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 50;

  @override
  int get selectedRowCount => 0;

  rWhs(whs) {
    var elm = const Text("-", style: TextStyle(color: Colors.blue));
    switch (whs) {
      case 1:
        elm = const Text("CK-1", style: TextStyle(color: Colors.blue));
        break;

      case 2:
        elm = const Text("CK-2", style: TextStyle(color: Colors.green));
        break;

      case 3:
        elm = const Text("RMW", style: TextStyle(color: Colors.red));
        break;

      case 4:
        elm = const Text("PHI", style: TextStyle(color: Colors.yellow));
        break;

      default:
        elm = const Text("FG", style: TextStyle(color: Colors.amber));
    }

    return elm;
  }

  rType(int x) {
    if (x > 0) {
      return const Text(
        "Order Plan",
        style: TextStyle(color: Colors.amber),
      );
    }
    return const Text(
      "Receive",
      style: TextStyle(color: Colors.red),
    );
  }

  rStatus(bool x) {
    if (x) {
      return TextButton(
          onPressed: () => print("yes to no sync!"),
          child: const Text(
            "Yes",
            style: TextStyle(color: Colors.green),
          ));
    }

    return TextButton(
        onPressed: () => print("no to yes sync!"),
        child: const Text(
          "No",
          style: TextStyle(color: Colors.red),
        ));
  }

  rDateTime() {
    var d = DateTime.now().toString();
    return d.substring(0, 19);
  }

  pushFileGedi(String filename) {
    return TextButton(
        onPressed: () async => Navigator.push(this.context,
            MaterialPageRoute(builder: (_) => GediTextView(title: filename))),
        child: Text(filename));
  }

  @override
  DataRow? getRow(int index) {
    var formatter = NumberFormat('#,##,000');
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text((index + 1).toString())),
      DataCell(rWhs(Random().nextInt(4))),
      DataCell(rType(Random().nextInt(2))),
      DataCell(Text((Random().nextInt(99999)).toString().padLeft(5, '0'))),
      DataCell(pushFileGedi("OES.WHAE.32T$index.SPL.20211120131117.TXT")),
      DataCell(Text(formatter.format(Random().nextInt(99999)).toString())),
      DataCell(rStatus(Random().nextBool())),
      DataCell(Text(rDateTime())),
      DataCell(DeleteDialogWidgets(id: index.toString())),
    ]);
  }
}
