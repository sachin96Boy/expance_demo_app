import 'package:flutter/material.dart';

class DataInputSection extends StatelessWidget {
  const DataInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            TextField(
              decoration: InputDecoration(labelText: "Title"),
            ),
            TextField(
              decoration: InputDecoration(labelText: "Amount"),
            ),
            TextButton(
              onPressed: null,
              style: ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.green)),
              child: Text("Add Transaction"),
            )
          ],
        ),
      ),
    );
  }
}
