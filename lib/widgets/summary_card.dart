import 'package:flutter/material.dart';

import '../main.dart';
import '../themes/colors.dart';

class SummaryCard extends StatelessWidget {
  const SummaryCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: $style.insets.sm,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        width: $style.dimens.summaryCardWidth,
        height: $style.dimens.summaryCardHeight,
        padding: EdgeInsets.all($style.insets.sm),
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.primaryDarker, AppColors.primary],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Total Balance",
                  style: TextStyle(color: AppColors.onSurface),
                ),
                Text(
                  '\$2,548.00',
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: AppColors.onSurface),
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
                    const Text(
                      "Income",
                      style: TextStyle(color: AppColors.onSurface),
                    ),
                    Text(
                      '\$18,480.00',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: AppColors.onSurface),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Expenses",
                      style: TextStyle(color: AppColors.onSurface),
                    ),
                    Text(
                      '\$18,480.00',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(color: AppColors.onSurface),
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
