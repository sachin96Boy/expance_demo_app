import 'package:flutter/material.dart';
import 'package:personal_expance_app/widgets/user_transaction.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.green,
                elevation: 5.0,
                child: Text('Chart section'),
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}
