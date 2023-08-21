import 'package:flutter/material.dart';

class MyPage extends StatelessWidget {
  static const routeName = '/my';
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('마이페이지'),
      ),
    );
  }
}
