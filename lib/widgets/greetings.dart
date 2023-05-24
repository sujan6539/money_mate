import 'dart:math';

import 'package:flutter/material.dart';
import 'package:money_mate/themes/colors.dart';

class Greetings extends StatelessWidget {
  final Size size;
  const Greetings({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: ClipPath(
        clipper: GreetingsClipper(),
        child: Container(
          color: AppColors.primary,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('Good afternoon'), Text('Sujan Prajapati')],
          ),
        ),
      ),
    );
  }
}

class GreetingsClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    print(size.toString());
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.arcTo(
        Rect.fromPoints(
          Offset(0, size.height - 100),
          Offset(size.width, size.height),
        ),
        0,
        pi, false);
    path.lineTo(0, size.height-100);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
