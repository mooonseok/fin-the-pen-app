import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../pages/home/home_page.dart';
import '../pages/my_page/my_page.dart';
import '../utility/constants/const_paths.dart';

enum NavigateIconType {
  home,
  myPage,
}

extension NavigateIconTypeExtension on NavigateIconType {
  String getPath(String fileName) => '${ConstPaths.svgAssets}/$fileName.svg';

  SvgPicture get deactivatedIcon {
    String fileName;

    switch (this) {
      case NavigateIconType.home:
        fileName = 'home_outline';
        break;
      case NavigateIconType.myPage:
        fileName = 'my_page_outline';
        break;
    }
    final path = getPath(fileName);
    return SvgPicture.asset(path);
  }

  SvgPicture get activatedIcon {
    String fileName;

    switch (this) {
      case NavigateIconType.home:
        fileName = 'home';
        break;
      case NavigateIconType.myPage:
        fileName = 'my_page';
        break;
    }
    final path = getPath(fileName);
    return SvgPicture.asset(path);
  }

  Widget get page {
    switch (this) {
      case NavigateIconType.home:
        return const HomePage();
      case NavigateIconType.myPage:
        return const MyPage();
    }
  }

  String get bottomText {
    String text;
    switch (this) {
      case NavigateIconType.home:
        text = '홈';
        break;
      case NavigateIconType.myPage:
        text = '내정보';
        break;
    }
    return text;
  }
}
