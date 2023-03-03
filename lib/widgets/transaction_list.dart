import 'package:flutter/material.dart';

import '../Transaction/transaction.dart';
import '../widgets/transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 400.0,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return TransactionCard(transaction: transactions[index]);
          },
          itemCount: transactions.length,
        ));
  }
}
