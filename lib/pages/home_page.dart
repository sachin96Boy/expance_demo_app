import 'package:flutter/material.dart';
import 'package:personal_expance_app/Transaction/transaction.dart';
import 'package:personal_expance_app/widgets/data_input_section.dart';
import 'package:personal_expance_app/widgets/transaction_card.dart';

class HomePage extends StatelessWidget {
  final List<Transaction> transactions = [
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
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Column(
        children: [
          const SizedBox(
            width: double.infinity,
            child: Card(
              color: Colors.green,
              elevation: 5.0,
              child: Text('Chart section'),
            ),
          ),
          const DataInputSection(),
          Column(
            children: transactions
                .map((elem) => TransactionCard(transaction: elem))
                .toList(),
          )
        ],
      ),
    );
  }
}
