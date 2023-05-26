import 'package:flutter/material.dart';
import 'package:money_mate/themes/colors.dart';
import 'package:money_mate/widgets/header.dart';
import 'package:money_mate/widgets/summary_card.dart';

import '../main.dart';


class Greetings extends StatelessWidget {
  const Greetings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Header(
          size: Size(size.width, 0.45 * size.height),
          children: [
            Padding(padding: EdgeInsets.all($style.insets.lg)),
            Text(
              'Good afternoon',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.onSurface
              ),
            ),
            Text(
              'Sujan Prajapati',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  color: AppColors.onSurface
              ),
            )
          ],
        ),
        Positioned(child: SummaryCard(), bottom: 0, right: 20, left: 20,)
      ],
    );
  }
}
