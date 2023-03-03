import 'package:flutter/material.dart';

import '../Transaction/transaction.dart';
import '../widgets/transaction_card.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _transactions = [
    Transaction(
      id: "t1",
      title: "new Watch",
      amount: 67.35,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "new Watch with red Panel",
      amount: 45.35,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _transactions
          .map((elem) => TransactionCard(transaction: elem))
          .toList(),
    );
  }
}
