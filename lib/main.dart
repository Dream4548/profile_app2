//import 'dart:nativewrappers/_internal/vm/lib/ffi_patch.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0), // เปลี่ยน 20.0 เป็นค่าที่คุณต้องการ
                child: Container(
                  width: 400,
                  height: 400,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: AssetImage(
                          'lib/assets/images/dream.png'), // Background image URL
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          const Text(
            'Ratchanon ketkeaw',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              'ใช้ชีวิตชิวๆ กับเกมโปรด เพลงเพราะ และภาพวาดในจินตนาการ 🎮🎧🎨',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 32),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.facebook, size: 36),
                  title: Text('Ratchanon Ketkaew'),
                ),
                ListTile(
                  leading: Icon(Icons.email, size: 36),
                  title: Text('deemgamer123@gmail.com'),
                ),
                ListTile(
                  leading: Image.network(
                    'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',
                    width: 36,
                    height: 36,
                  ),
                  title: Text('Dream4548'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
