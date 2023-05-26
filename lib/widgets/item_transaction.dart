import 'package:flutter/material.dart';

import '../themes/colors.dart';

class ItemTransaction extends StatelessWidget {
  final TransactionDetails transactionDetails;

  const ItemTransaction({Key? key, required this.transactionDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8.0)),
          child: const Icon(
            Icons.person,
            color: Colors.black,
            size: 48,
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
        Column(
          children: [
            Text(
              'Title',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(color: Colors.black),
            ),
            Text(
              'date',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge
                  ?.copyWith(color: Colors.grey),
            )
          ],
        ),
        const Spacer(),
        Text(
          "\$850",
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: AppColors.dbBalanceColor),
        )
      ],
    );
  }
}

class TransactionDetails {
  String title;
  String date;
  String value;
  String icon;

  TransactionDetails(
      {required this.title,
      required this.date,
      required this.value,
      required this.icon});
}
