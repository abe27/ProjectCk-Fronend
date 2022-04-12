import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DeleteDialogWidgets extends StatelessWidget {
  const DeleteDialogWidgets({Key? key, required this.id}) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.red,
      tooltip: "ลบข้อมูล $id",
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('ยืนยันคำสั่งลบข้อมูล'),
          content: Text('คุณต้องการที่จะลบข้อมูล $id นี้ใช่หรือไม่?'),
          actions: <Widget>[
            TextButton.icon(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              icon: const Icon(Ionicons.close_outline),
              label: const Text('ยกเลิก'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('ใช่! ลบเลย'),
            ),
          ],
        ),
      ).then((value) => print(value)),
      icon: const Icon(Ionicons.trash_outline, size: 16),
    );
  }
}
