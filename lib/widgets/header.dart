import 'dart:math';

import 'package:flutter/material.dart';
import 'package:money_mate/main.dart';
import 'package:money_mate/themes/colors.dart';

class Header extends StatelessWidget {
  final Size size;
  final List<Widget> children;

  const Header({Key? key, required this.size, required this.children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height,
      child: ClipPath(
        clipper: GreetingsClipper(),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.primaryDarker, AppColors.primary],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
          foregroundDecoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'assets/eclipse.png',
                  ),
                  alignment: Alignment.topLeft)),
          child: Padding(
            padding: EdgeInsets.all($style.insets.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ),
      ),
    );
  }
}

class GreetingsClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, 0);
    path.arcTo(
        Rect.fromPoints(
          Offset(0, size.height - 120),
          Offset(size.width, size.height - 60),
        ),
        0,
        pi,
        false);
    path.lineTo(0, size.height - 120);
    path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
