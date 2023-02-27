import 'package:flutter/material.dart';
import 'package:personal_expance_app/Transaction/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26, width: 2.0)),
          child: Text(transaction.amount.toString()),
        ),
        Column(
          children: [
            Text(transaction.title),
            Text(transaction.date.toString())
          ],
        )
      ]),
    );
  }
}
