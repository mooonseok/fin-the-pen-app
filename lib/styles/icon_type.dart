import 'package:flutter_svg/svg.dart';

import '../utility/constants/const_paths.dart';

enum IconType {
  arrowLeft,
  arrowRight,
  search,
}

extension IconTypeExtension on IconType {
  String getPath(String fileName) => '${ConstPaths.assets}$fileName.svg';

  SvgPicture get svg {
    String fileName;

    switch (this) {
      case IconType.arrowLeft:
        fileName = 'arrow_left';
        break;
      case IconType.arrowRight:
        fileName = 'arrow_right';
        break;
      case IconType.search:
        fileName = 'search';
        break;
    }

    final path = getPath(fileName);
    return SvgPicture.asset(path);
  }
}
