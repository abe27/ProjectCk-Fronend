import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../models/gedi_data.dart';

class DownloadGediPage extends StatefulWidget {
  const DownloadGediPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<DownloadGediPage> createState() => DownloadGediPageWidget();
}

class DownloadGediPageWidget extends State<DownloadGediPage> {
  void _addNewData() {}
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
                onPressed: _addNewData,
                icon: const Icon(Ionicons.add_outline)),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: IconButton(
                tooltip: "โหลดข้อมูลอีกครั้ง",
                onPressed: _addNewData,
                icon: const Icon(Ionicons.refresh_outline)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: PaginatedDataTable(
          rowsPerPage: 15,
          columns: const [
            DataColumn(label: Text('#')),
            DataColumn(label: Text('WHS')),
            DataColumn(label: Text('Type')),
            DataColumn(label: Text('Batch ID')),
            DataColumn(label: Text('Batch File')),
            DataColumn(label: Text('Size')),
            DataColumn(label: Text('Status')),
            DataColumn(label: Text('Last Update')),
            DataColumn(label: Text('')),
          ],
          source: tableData,
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

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: const [
      DataCell(Text("1")),
      DataCell(Text("vB")),
      DataCell(Text("vC")),
      DataCell(Text("VD")),
      DataCell(Text("1")),
      DataCell(Text("vB")),
      DataCell(Text("vC")),
      DataCell(Text("VD")),
    ]);
  }
}
