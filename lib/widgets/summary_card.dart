import 'package:flutter/material.dart';

import '../main.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: $style.insets.sm),
      child: Container(
        width: $style.dimens.summaryCardWidth,
        height: $style.dimens.summaryCardHeight,
        padding: EdgeInsets.all($style.insets.sm),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Total Balance"),
                Text(
                  '\$2,548.00',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Income"),
                    Text(
                      '\$18,480.00',
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Expenses"),
                    Text(
                      '\$18,480.00',
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
