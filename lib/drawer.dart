import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_app/bottomsheet.dart';
import 'package:profile_app/sheet_content.dart';
import 'about.dart'; // ตรวจสอบให้แน่ใจว่ามีการนำเข้าไฟล์ที่ถูกต้อง
import 'grid.dart'; // ตรวจสอบให้แน่ใจว่ามีการนำเข้าไฟล์ที่ถูกต้อง

void main() {
  runApp(const MyDrawer());
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // ใช้ Get.offAll เพื่อไปที่ HomeScreen
                Get.offAll(() => const HomeScreen());
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Get.to(() => const AboutApp());
              },
            ),
            ListTile(
              leading: const Icon(Icons.grid_view),
              title: const Text('Grid'),
              onTap: () {
                Get.to(() => const GridPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.table_chart),
              title: const Text('Sheet'),
              onTap: () {
                Get.to(() => const sheet_content());
              },
            ),
            ListTile(
              leading: const Icon(Icons.table_chart),
              title: const Text('bottomsheet'),
              onTap: () {
                Get.to(() => const BottomSheetExample());
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('Home Screen Content'),
      ),
    );
  }
}
