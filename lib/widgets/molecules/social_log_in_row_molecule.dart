import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../styles/social_login_type.dart';
import '../../utility/common_methods/common_method.dart';
import '../../utility/constants/const_paths.dart';

class SocialLogInRowMolecule extends StatelessWidget {
  const SocialLogInRowMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    final icons = _getIcons();
    final iconsWithSpace = CommonMethod.format
        .insertSpacesBetweenWidget(icons, horizontalSpace: 22.9);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: iconsWithSpace,
    );
  }

  List<Widget> _getIcons() {
    return SocialLoginType.values
        .map<Widget>((type) => GestureDetector(
              onTap: type.onTap,
              child: SvgPicture.asset(
                  '${ConstPaths.svgAssets}/social_login/login_${type.name}.svg'),
            ))
        .toList();
  }
}
