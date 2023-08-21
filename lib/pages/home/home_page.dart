import 'package:flutter/material.dart';

import '../../widgets/molecules/app_bar_molecule.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMolecule(
        titleWidget: const Text('홈화면'),
      ),
      body: SafeArea(
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
