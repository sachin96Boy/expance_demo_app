import 'package:flutter/material.dart';

import '../Transaction/transaction.dart';

import '../widgets/data_input_section.dart';
import '../widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({super.key});

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
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
  void _addNewTransation(String title, double amount) {
    final tansaction = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _transactions.add(tansaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DataInputSection(addTransaction: _addNewTransation),
        TransactionList(transactions: _transactions),
      ],
    );
  }
}
