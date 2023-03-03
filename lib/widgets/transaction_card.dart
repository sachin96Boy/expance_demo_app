import 'package:dart_date/dart_date.dart';
import 'package:flutter/material.dart';

import '../Transaction/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    const pattern = 'yMMMd';
    return Card(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.green,
              width: 2.0,
            ),
          ),
          child: Row(
            children: [
              const Icon(Icons.attach_money, color: Colors.green),
              Text(transaction.amount.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.green,
                  )),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(transaction.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16.0)),
              Text(
                transaction.date.format(pattern),
                style: TextStyle(color: Colors.grey.shade700),
              )
            ],
          ),
        )
      ]),
    );
  }
}
