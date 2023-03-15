import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';

import '../Transaction/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  final Function deleteTransaction;
  const TransactionCard(
      {super.key, required this.transaction, required this.deleteTransaction});

  @override
  Widget build(BuildContext context) {
    const pattern = 'yMMMd';
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 5.0),
      elevation: 3.0,
      child: ListTile(
          leading: CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.green,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FittedBox(
                child: Row(
                  children: [
                    const Icon(Icons.attach_money, color: Colors.white),
                    Text(transaction.amount.toStringAsFixed(2),
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ),
          ),
          title: Text(
            transaction.title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          subtitle: Text(
            transaction.date.format(pattern),
            style: TextStyle(color: Colors.grey.shade700),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
            onPressed: () => deleteTransaction(transaction.id),
          )),
    );
  }
}
