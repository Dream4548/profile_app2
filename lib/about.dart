import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:profile_app/drawer.dart';
import 'package:profile_app/main.dart';

void main() {
  runApp(const AboutApp());
}

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<String> items = List<String>.generate(100, (i) => 'dream $i');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My List"),
      ),
      drawer: MyDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey), // เพิ่มเส้นขอบสีเทา
                borderRadius:
                    BorderRadius.circular(8.0), // เพิ่มมุมโค้งให้กับเส้นขอบ
              ),
              child: const GFListTile(
                titleText: 'Title',
                subTitleText: 'Ratchanon ketkeaw',
                icon: Icon(Icons.favorite),
                padding:
                    EdgeInsets.all(8.0), // เพิ่ม padding เพื่อป้องกัน overflow
              ),
            ),
          );
        },
      ),
    );
  }
}
