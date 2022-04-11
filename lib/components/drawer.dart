import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

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
          const Divider(),
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
              title: const Tooltip(
                  message: "แสดงข้อมูลการรับสินค้าเข้าระบบ",
                  child: Text("ข้อมูลการรับสินค้า")),
              trailing: const Icon(Icons.arrow_drop_up),
              tileColor: null,
              onTap: null),
          const Divider(),
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
            leading: const Icon(Ionicons.document_text_outline),
            title: Tooltip(
                message: "แสดงข้อมูลการออก Invoice",
                child: const Text("ข้อมูล Invoice")),
            trailing: Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          const ListTile(
            leading: const Icon(Ionicons.archive_outline),
            title: const Tooltip(
                message: "แสดงข้อมูลการร้องขอตู้ Container",
                child: Text("ข้อมูล Container Request")),
            trailing: const Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          const ListTile(
            leading: const Icon(Ionicons.cut_outline),
            title: Tooltip(
                message: "แสดงข้อมูลการตาม Part และตัด Short",
                child: Text("ข้อมูล Part Short")),
            trailing: Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          const Divider(),
          const ListTile(
            leading: const Icon(Ionicons.cloud_upload_outline),
            title: Tooltip(
                message: "แสดงข้อมูลการอัพโหลดข้อมูล GEDI",
                child: const Text("ข้อมูล Upload GEDI")),
            trailing: Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          const Divider(),
          const ListTile(
            leading: const Icon(Ionicons.file_tray_full_outline),
            title: const Tooltip(
                message: "รายงานสินค้าคงคลัง",
                child: Text("รายงานข้อมูล Stock")),
            trailing: const Icon(Icons.arrow_drop_up),
            tileColor: null,
            onTap: null,
          ),
          // Divider(),
          const Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: ListTile(
                  leading: Icon(Ionicons.log_out_outline),
                  title: Tooltip(
                      message: "ออกจาระบบ CK-WHS", child: Text('ออกจากระบบ')),
                  onTap: null),
            ),
          ),
        ],
      ),
    );
  }
}
