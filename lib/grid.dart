import 'package:flutter/material.dart';
import 'package:profile_app/drawer.dart';

class GridPage extends StatefulWidget {
  const GridPage({super.key});

  @override
  State<GridPage> createState() => _GridPageState();
}

class _GridPageState extends State<GridPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridPage"),
      ),
      drawer: const MyDrawer(), // Ensure MyDrawer is properly instantiated
      body: Column(
        children: [
          // ListView part
          Container(
            height: 100, // Set height of ListView
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160,
                  color: Colors.red,
                  child: const Center(child: Text("Item 1")),
                ),
                Container(
                  width: 160,
                  color: Colors.blue,
                  child: const Center(child: Text("Item 2")),
                ),
                Container(
                  width: 160,
                  color: Colors.green,
                  child: const Center(child: Text("Item 3")),
                ),
                Container(
                  width: 160,
                  color: Colors.yellow,
                  child: const Center(child: Text("Item 4")),
                ),
                Container(
                  width: 160,
                  color: Colors.orange,
                  child: const Center(child: Text("Item 5")),
                ),
              ],
            ),
          ),
          // GridView part
          Expanded(
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[100],
                  child: const Text("He'd have you all unravel at the"),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[200],
                  child: const Text('Heed not the rabble'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[300],
                  child: const Text('Sound of screams but the'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[400],
                  child: const Text('Who scream'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[500],
                  child: const Text('Revolution is coming...'),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  color: Colors.teal[600],
                  child: const Text('Revolution, they...'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
