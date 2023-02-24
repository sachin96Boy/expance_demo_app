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
          SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.green,
              elevation: 5.0,
              child: Text('Chart section'),
            ),
          ),
          Card(
            child: Text("List of list items section"),
          )
        ],
      ),
    );
  }
}
