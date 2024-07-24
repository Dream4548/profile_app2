import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text('This is the About Page'),
      ),
    );
  }
}
