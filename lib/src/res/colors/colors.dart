import 'package:dewsclim/lib.dart';

class AppColors {
  const AppColors._();

  static ColorScheme get colorScheme => const ColorScheme(
        primary: primary,
        secondary: secondary,
        surface: baseWhite,
        error: error,
        onPrimary: baseWhite,
        onSecondary: baseWhite,
        onSurface: baseBlack,
        onError: baseWhite,
        brightness: Brightness.light,
      );

  //Color palette
  static const Color baseWhite = Color(0xFFFAFAFA);
  static const Color baseBlack = Color(0xFF0a0b0a);
  static const Color primary = Color(0xFF3abc4f);
  static const Color secondary = Color(0xFF0e385b);
  static const Color success = Color(0xffa4b8f4);
  static const Color warning = Color(0xfff4bd90);
  static const Color error = Color(0xffe4626f);

  //PRIMARY
  static const Color primary100 = Color(0xFFE2F6E5);
  static const Color primary200 = Color(0xFFC5EDCC);
  static const Color primary300 = Color(0xFFA9E4B2);
  static const Color primary400 = Color(0xFF8CDB99);
  static const Color primary500 = Color(0xFF6FD37F);
  static const Color primary600 = Color(0xFF52CA65);
  static const Color primary700 = Color(0xFF31A043);
  static const Color primary800 = Color(0xFF298437);
  static const Color primary900 = Color(0xFF20682C);
  static const Color primary1000 = Color(0xFF174C20);

  ///SECONDARY
  static const Color secondary100 = Color(0xFFD8EAF9);
  static const Color secondary200 = Color(0xFFB1D5F3);
  static const Color secondary300 = Color(0xFF8AC0ED);
  static const Color secondary400 = Color(0xFF63ABE7);
  static const Color secondary500 = Color(0xFF3C96E1);
  static const Color secondary600 = Color(0xFF2080D0);
  static const Color secondary700 = Color(0xFF1A68A9);
  static const Color secondary800 = Color(0xFF145082);
  static const Color secondary900 = Color(0xFF0B2D4A);
  static const Color secondary1000 = Color(0xFF092339);

  ///NEUTRALS
  static const Color neutral100 = Color(0xFFE3E3E3);
  static const Color neutral200 = Color(0xFFCCCBCB);
  static const Color neutral300 = Color(0xFFB5B3B3);
  static const Color neutral400 = Color(0xFF9F9C9C);
  static const Color neutral500 = Color(0xFF898483);
  static const Color neutral600 = Color(0xFF726C6C);
  static const Color neutral700 = Color(0xFF5A5555);
  static const Color neutral800 = Color(0xFF433F3E);
  static const Color neutral900 = Color(0xFF2B2928);
  static const Color neutral1000 = Color(0xFF151413);

  ///SUCCESS
  static const Color success100 = Color(0xFFD2DCFA);
  static const Color success200 = Color(0xFF4F75EA);
  static const Color success300 = Color(0xFF1742C1);

  ///WARNING
  static const Color warning100 = Color(0xFFFADEC8);
  static const Color warning200 = Color(0xFFEC8C3E);
  static const Color warning300 = Color(0xFFBC5F13);

  ///ERROR
  static const Color error100 = Color(0xFFE4626F);
  static const Color error200 = Color(0xFFC03744);
  static const Color error300 = Color(0xFF8C1823);
}
