import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctofTotal;

  const ChartBar(
      {super.key,
      required this.label,
      required this.spendingAmount,
      required this.spendingPctofTotal});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('\$${spendingAmount.toStringAsFixed(0)}'),
        const SizedBox(
          height: 4.0,
        ),
        SizedBox(
          height: 60.0,
          width: 10.0,
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.green.shade400, width: 1.0),
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(20.0)),
            ),
            FractionallySizedBox(
              heightFactor: spendingPctofTotal,
              child: Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            )
          ]),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Text(label),
      ],
    );
  }
}
