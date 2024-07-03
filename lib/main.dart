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
              Container(
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
              'I climb every mountain and swim every ocean. Just will be with you and fix what I broken.... 🎵',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 32),
          const Padding(
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
                  leading: Icon(Icons.emoji_events, size: 36),
                  title: Text('Winner'),
                  subtitle: Text('Swimming Competition'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
