import 'package:flutter/material.dart';

List<Map<String, String>> itemNames = [
  {'name': 'Item 1'},
  {'name': 'Item 2'},
  {'name': 'Item 3'},
  {'name': 'Item 4'},
  {'name': 'Item 5'},
  {'name': 'Item 6'},
  {'name': 'Item 7'},
  {'name': 'Item 8'},
  {'name': 'Item 9'},
  {'name': 'Item 10'},
];

List<Widget> sheetContent = itemNames.map((item) {
  return Container(
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(item['name']!),
  );
}).toList();
