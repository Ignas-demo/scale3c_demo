import 'dart:ui';

class AppLocalization {
  static const langsFolderPath = 'core/resources/langs';
  static List<Locale> get supportedLocales => [_enLocale];
  static Locale get fallbackLocale => _enLocale;

  static const _enLocale = Locale('en', 'US');
}