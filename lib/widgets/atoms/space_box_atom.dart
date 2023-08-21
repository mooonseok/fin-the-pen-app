import 'package:flutter/material.dart';

import '../../utility/common_methods/common_method.dart';

class SpaceBoxAtom extends StatelessWidget {
  final double height;
  final double width;
  const SpaceBoxAtom({
    super.key,
    this.height = 0,
    this.width = 0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: CommonMethod.calculate.relativeHeight(height),
      width: CommonMethod.calculate.relativeWidth(width),
    );
  }
}
