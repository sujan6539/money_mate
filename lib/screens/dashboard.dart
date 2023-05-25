import 'package:flutter/material.dart';
import 'package:money_mate/widgets/greetings.dart';

import '../widgets/item_transaction.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Greetings(),
        ItemTransaction(
          transactionDetails:
              TransactionDetails(title: '', date: '', value: '', icon: ''),
        )
      ],
    );
  }
}
