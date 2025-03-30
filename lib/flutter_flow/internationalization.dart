import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
  }) =>
      [enText, hiText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '1kktcqj3': {
      'en': 'Home',
      'hi': '',
    },
    'owmeic3x': {
      'en': 'Home',
      'hi': '',
    },
    '04qd2r17': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Pagene
  {
    '9oxft9v8': {
      'en': 'Expanded body text',
      'hi': '',
    },
    '49gi31am': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Miscellaneous
  {
    '3q2r2enw': {
      'en': '',
      'hi': '',
    },
    'cgw9yhii': {
      'en': '',
      'hi': '',
    },
    '1crs81he': {
      'en': '',
      'hi': '',
    },
    'm3c89l52': {
      'en': '',
      'hi': '',
    },
    '414wnnhf': {
      'en': '',
      'hi': '',
    },
    'iedw8qv3': {
      'en': '',
      'hi': '',
    },
    'z40mn8en': {
      'en': '',
      'hi': '',
    },
    '49qacz77': {
      'en': '',
      'hi': '',
    },
    'rzwmfndi': {
      'en': '',
      'hi': '',
    },
    'yu3yl5ai': {
      'en': '',
      'hi': '',
    },
    'zh5zoksp': {
      'en': '',
      'hi': '',
    },
    'pbdfi5ft': {
      'en': '',
      'hi': '',
    },
    'uqlrocci': {
      'en': '',
      'hi': '',
    },
    '5oyy3cck': {
      'en': '',
      'hi': '',
    },
    '4mkouwlq': {
      'en': '',
      'hi': '',
    },
    '4jmj9ro7': {
      'en': '',
      'hi': '',
    },
    'u3jqhb29': {
      'en': '',
      'hi': '',
    },
    'ofo08alv': {
      'en': '',
      'hi': '',
    },
    'ivvdhxif': {
      'en': '',
      'hi': '',
    },
    '3zbjsrhg': {
      'en': '',
      'hi': '',
    },
    'sjrikpim': {
      'en': '',
      'hi': '',
    },
    '16nyzq3f': {
      'en': '',
      'hi': '',
    },
    'h03fqhvl': {
      'en': '',
      'hi': '',
    },
    'rvt3qt1f': {
      'en': '',
      'hi': '',
    },
    '6dcccc5i': {
      'en': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
