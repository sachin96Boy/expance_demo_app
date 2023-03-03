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
        child: transactions.isEmpty
            ? Column(
                children: [
                  const Text(
                    "No Items add Yet",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  SizedBox(
                    height: 300.0,
                    child: Image.asset(
                      'assets/images/noitems.png',
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            : ListView.builder(
                itemBuilder: (context, index) {
                  return TransactionCard(transaction: transactions[index]);
                },
                itemCount: transactions.length,
              ));
  }
}
