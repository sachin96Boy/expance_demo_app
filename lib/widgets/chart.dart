import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Card(
        color: Colors.green,
        elevation: 5.0,
        child: Text('Chart section'),
      ),
    );
  }
}
