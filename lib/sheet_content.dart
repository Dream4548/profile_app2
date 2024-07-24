import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';

class sheet_content extends StatefulWidget {
  const sheet_content({super.key});

  @override
  State<sheet_content> createState() => _sheet_contentState();
}

class _sheet_contentState extends State<sheet_content> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: MyDrawer(),
    );
  }
}
