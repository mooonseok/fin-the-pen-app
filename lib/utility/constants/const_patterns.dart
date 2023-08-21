abstract class ConstPatterns {
  static String lowerCase = 'a-z';
  static String upperCase = 'A-Z';
  static String alphabet = lowerCase + upperCase;
  static String korean =
      'ㄱ-ㅎ|ㅏ-ㅣ|가-힣|ᆞ|ᆢ|ㆍ|ᆢ|ᄀᆞ|ᄂᆞ|ᄃᆞ|ᄅᆞ|ᄆᆞ|ᄇᆞ|ᄉᆞ|ᄋᆞ|ᄌᆞ|ᄎᆞ|ᄏᆞ|ᄐᆞ|ᄑᆞ|ᄒᆞ';
  static String numbers = '0-9';
  static List<String> email = [alphabet, numbers, '@_.'];
  static List<String> password = [alphabet, numbers, '!@#%^&*'];
  static List<String> nickname = [korean, alphabet, numbers, '_'];
  static String urlPattern =
      r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?";
}
