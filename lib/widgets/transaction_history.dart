import 'package:flutter/material.dart';

import 'item_transaction.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(16),
      children: [
        Text(
          "Transaction History",
          style: Theme.of(context)
              .textTheme
              .titleMedium
        ),
        Padding(padding: EdgeInsets.all(4.0)),
        ItemTransaction(
          transactionDetails:
              TransactionDetails(title: '', date: '', value: '', icon: ''),
        )
      ],
    );
  }
}
