import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';

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
                  height: 200,
                  color: Colors.white,
                  child: const Center(
                    child: Text('Hello from the Bottom Sheet'),
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

void main() {
  runApp(MaterialApp(
    home: BottomSheetExample(),
  ));
}
