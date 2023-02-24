import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Column(
        children: const [
          Card(
            child: Text('Chart section'),
          ),
          Card(
            child: Text("List of list items section"),
          )
        ],
      ),
    );
  }
}
