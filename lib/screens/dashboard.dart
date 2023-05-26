import 'package:flutter/material.dart';
import 'package:money_mate/widgets/greetings.dart';

import '../widgets/transaction_history.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Greetings(),
        TransactionHistory(),
      ],
    );
  }
}
