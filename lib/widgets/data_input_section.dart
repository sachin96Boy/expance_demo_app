import 'package:flutter/material.dart';

class DataInputSection extends StatefulWidget {
  final Function addTransaction;

  const DataInputSection({super.key, required this.addTransaction});

  @override
  State<DataInputSection> createState() => _DataInputSectionState();
}

class _DataInputSectionState extends State<DataInputSection> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0) {
      return;
    }

    widget.addTransaction(
      enteredTitle,
      enteredAmount,
    );

    Navigator.of(context).pop();
  }

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
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Amount"),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              onPressed: () => submitData,
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
