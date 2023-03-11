import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/chart.dart';
import '../Transaction/transaction.dart';
import '../widgets/data_input_section.dart';
import '../widgets/transaction_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Transaction> _transactions = [
    // Transaction(
    //   id: "t1",
    //   title: "new Watch",
    //   amount: 67.35,
    //   date: DateTime.now(),
    // ),
    // Transaction(
    //   id: "t2",
    //   title: "new Watch with red Panel",
    //   amount: 45.35,
    //   date: DateTime.now(),
    // ),
  ];

  List<Transaction> get _recentTransactions {
    return _transactions
        .where((element) => element.date.isAfter(DateTime.now().subtract(
              const Duration(days: 7),
            )))
        .toList();
  }

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

  void _showModelFromBottom(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) {
          return GestureDetector(
              onTap: () {},
              behavior: HitTestBehavior.opaque,
              child: DataInputSection(addTransaction: _addNewTransation));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Expance App",
          style: GoogleFonts.poppins(),
        ),
        actions: [
          IconButton(
              onPressed: () {
                _showModelFromBottom(context);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Chart(recentTransactions: _recentTransactions),
            TransactionList(transactions: _transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showModelFromBottom(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
