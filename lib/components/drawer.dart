import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../pages/auth.dart';
import '../pages/download_gedi.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Taweechai Yuenyang'),
            accountEmail: Text('taweechai@seiwa-pioneer.com'),
            currentAccountPicture: CircleAvatar(
              child: CircleAvatar(
                backgroundImage: AssetImage("lib/assets/images/user.png"),
                minRadius: 10,
                maxRadius: 85,
              ),
            ),
          ),
          ListTile(
              leading: const Icon(CupertinoIcons.home),
              title: const Tooltip(
                  message: "สรุปรายการข้อมูลเบื้องต้น", child: Text("หน้าแรก")),
              trailing: const Icon(Icons.arrow_drop_up),
              tileColor: null,
              onTap: () async {
                Navigator.pop(context, 'Nope.');
              }),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'จัดเตรียมข้อมูล',
            ),
          ),
          ListTile(
              leading: const Icon(Ionicons.cloud_download_outline),
              title: const Tooltip(
                  message: "แสดงข้อมูลการรับข้อมูล GEDI จากระบบ Yazaki",
                  child: Text("ข้อมูล Download GEDI")),
              trailing: const Icon(Icons.arrow_drop_up),
              tileColor: null,
              onTap: () async {
                Navigator.pop(context, 'Nope.');
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const DownloadGediPage(
                            title: "จัดการข้อมูลการ Download GEDI")));
              }),
          const ListTile(
              leading: Icon(Ionicons.barcode_outline),
              title: Tooltip(
                  message: 'แสดงข้อมูลการรับสินค้าเข้าระบบ',
                  child: Text("ข้อมูลการรับสินค้า")),
              trailing: Icon(Icons.arrow_drop_up),
              tileColor: null,
              onTap: null),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'ข้อมูล Invoice Control',
            ),
          ),
          const ListTile(
            leading: Icon(Ionicons.calendar_outline),
            title: Tooltip(
                message: "แสดงข้อมูลการรับ Order จาก Planning",
                child: Text("ข้อมูล Order Plan")),
            trailing: Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Ionicons.document_text_outline),
            title: Tooltip(
                message: "แสดงข้อมูลการออก Invoice",
                child: Text("ข้อมูล Invoice")),
            trailing: Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Ionicons.archive_outline),
            title: Tooltip(
                message: "แสดงข้อมูลการร้องขอตู้ Container",
                child: Text("ข้อมูล Container Request")),
            trailing: Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          const ListTile(
            leading: Icon(Ionicons.cut_outline),
            title: Tooltip(
                message: "แสดงข้อมูลการตาม Part และตัด Short",
                child: Text("ข้อมูล Part Short")),
            trailing: Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'ข้อมูล GEDI',
            ),
          ),
          const ListTile(
            leading: Icon(Ionicons.cloud_upload_outline),
            title: Tooltip(
                message: "แสดงข้อมูลการอัพโหลดข้อมูล GEDI",
                child: Text("ข้อมูล Upload GEDI")),
            trailing: Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'รายงาน',
            ),
          ),
          const ListTile(
            leading: Icon(Ionicons.file_tray_full_outline),
            title: Tooltip(
                message: "รายงานสินค้าคงคลัง",
                child: Text("รายงานข้อมูล Stock")),
            trailing: Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          // Divider(),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ListTile(
                  leading: const Icon(Ionicons.log_out_outline),
                  title: const Tooltip(
                      message: "ออกจาระบบ CK-WHS", child: Text('ออกจากระบบ')),
                  onTap: () async => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => AuthenticationPage()))),
            ),
          ),
        ],
      ),
    );
  }
}
