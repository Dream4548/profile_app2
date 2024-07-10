import 'package:flutter/material.dart';

void main() {
  runApp(const About());
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
     body: Center(
      child: 
      Text("about meee"),
      ),
     );
  }
}