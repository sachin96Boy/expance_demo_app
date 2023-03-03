import 'package:flutter/material.dart';

import '../Transaction/transaction.dart';
import '../widgets/transaction_card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions
          .map((elem) => TransactionCard(transaction: elem))
          .toList(),
    );
  }
}
