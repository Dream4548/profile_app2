import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';
import 'sheet_content.dart'; // import ไฟล์ sheetcontent

void main() {
  runApp(MaterialApp(
    home: BottomSheetExample(),
  ));
}

class BottomSheetExample extends StatelessWidget {
  const BottomSheetExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet Example'),
      ),
      drawer: MyDrawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  color: Colors.white,
                  child: ListView(
                    children: sheetContent, // ใช้ข้อมูลจาก sheetcontent
                  ),
                );
              },
            );
          },
          child: const Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
