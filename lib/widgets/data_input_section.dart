import 'package:flutter/material.dart';

class DataInputSection extends StatelessWidget {
  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  DataInputSection({super.key, required this.addTransaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Title"),
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Amount"),
              controller: amountController,
            ),
            TextButton(
              onPressed: () => addTransaction(
                  titleController.text, double.parse(amountController.text)),
              style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.green)),
              child: const Text("Add Transaction"),
            )
          ],
        ),
      ),
    );
  }
}
