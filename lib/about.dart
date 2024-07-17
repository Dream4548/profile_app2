import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
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
      body: ListView.builder(
        itemCount: items.length,
        prototypeItem: ListTile(
          title: Text(items.first),
        ),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.add),
            title: Text(items[index]),
            subtitle: const Text("RAT"),
            trailing: const Icon(Icons.check),
          );
        },
      ),
    );
  }
}
