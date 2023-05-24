import 'dart:async';

import 'package:flutter/material.dart';
import 'package:money_mate/main.dart';

import '../themes/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void splashScreen(BuildContext context) {
    Timer(const Duration(milliseconds: 4), () async {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const MyHomePage(
                    title: 'Demo',
                  )));
    });
  }

  @override
  void initState() {
    super.initState();
    splashScreen(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary
    );
  }
}
