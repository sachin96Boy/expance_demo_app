import 'package:flutter/material.dart';
import 'package:personal_expance_app/Transaction/transaction.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;
  const TransactionCard({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(children: [
        SizedBox(
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
