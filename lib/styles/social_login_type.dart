enum SocialLoginType { kakao, naver, google, apple }

extension SocialLoginTypeExtension on SocialLoginType {
  Function() get onTap {
    Function() callback;
    switch (this) {
      case SocialLoginType.kakao:
        callback = () {
          print('kakao');
        };
        break;
      case SocialLoginType.naver:
        callback = () {
          print('naver');
        };
        break;
      case SocialLoginType.google:
        callback = () {
          print('google');
        };
        break;
      case SocialLoginType.apple:
        callback = () {
          print('apple');
        };
        break;
    }
    return callback;
  }
}
