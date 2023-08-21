import 'dart:async';

import 'package:fin_the_pen_app/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static const routeName = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => Timer(
        const Duration(seconds: 1),
        () => Navigator.pushNamedAndRemoveUntil(
            context, HomePage.routeName, (route) => false)));
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('스플래시 화면'),
        ),
      ),
    );
  }
}
