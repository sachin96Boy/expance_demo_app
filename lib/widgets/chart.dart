import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expance_app/Transaction/transaction.dart';
import 'package:personal_expance_app/widgets/chart_bar.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;
  const Chart({super.key, required this.recentTransactions});

  List<Map<String, Object>> get groupedTransactionValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      double totalSum = 0.0;
      for (Transaction transData in recentTransactions) {
        if (transData.date.day == weekDay.day &&
            transData.date.month == weekDay.month &&
            transData.date.year == weekDay.year) {
          totalSum += transData.amount;
        }
      }
      // print(DateFormat.E().format(weekDay));
      // print(totalSum);
      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum
      };
    });
  }

  double get maxSpending {
    return groupedTransactionValues.fold(
        0.0,
        (previousValue, element) =>
            previousValue + (element['amount'] as double));
  }

  @override
  Widget build(BuildContext context) {
    // print(groupedTransactionValues);
    return SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.green,
        elevation: 6.0,
        margin: const EdgeInsets.all(20.0),
        child: Row(
          children: groupedTransactionValues
              .map((e) => ChartBar(
                    label: (e['day'] as String),
                    spendingAmount: (e['amount'] as double),
                    spendingPctofTotal: maxSpending == 0.0
                        ? 0.0
                        : (e['amount'] as double) / maxSpending,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
