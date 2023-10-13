import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['fr', 'en', 'zu'];

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
    String? frText = '',
    String? enText = '',
    String? zuText = '',
  }) =>
      [frText, enText, zuText][languageIndex] ?? '';

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

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

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

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'o1ht9jca': {
      'fr': 'Laboratoire de test',
      'en': 'Test',
      'zu': 'Hlola',
    },
    't6n57otc': {
      'fr': 'Button',
      'en': 'button',
      'zu': 'inkinobho',
    },
    'a297sug4': {
      'fr': 'Test HTML',
      'en': 'button',
      'zu': 'inkinobho',
    },
    'h49e1a29': {
      'fr': 'Scan',
      'en': 'scan',
      'zu': 'scan',
    },
    'h2mp0mbl': {
      'fr': 'Cancel',
      'en': 'Cancel',
      'zu': 'Khansela',
    },
    'kmhsxrtm': {
      'fr': 'Photo',
      'en': 'Photo',
      'zu': 'Isithombe',
    },
    '3wptn07h': {
      'fr': 'Animation',
      'en': 'Photo',
      'zu': 'Isithombe',
    },
    'crw9b67y': {
      'fr': 'Transition',
      'en': 'Photo',
      'zu': 'Isithombe',
    },
    'ty33noge': {
      'fr': 'Test valeur periste',
      'en': 'Photo',
      'zu': 'Isithombe',
    },
    'qquesab4': {
      'fr': 'Test webservice',
      'en': 'Photo',
      'zu': 'Isithombe',
    },
    'fqeqx9tg': {
      'fr': 'Launcher APP',
      'en': 'Photo',
      'zu': 'Isithombe',
    },
    'nx4vzlpj': {
      'fr': 'Stream',
      'en': 'Photo',
      'zu': 'Isithombe',
    },
    '83y8sbm5': {
      'fr': 'Home',
      'en': 'Home',
      'zu': 'Ikhaya',
    },
  },
  // Page2
  {
    '2zr9f0il': {
      'fr': 'Test',
      'en': 'Test',
      'zu': 'Hlola',
    },
    'p676sxb8': {
      'fr': 'Button',
      'en': 'button',
      'zu': 'inkinobho',
    },
    'yznup1k0': {
      'fr': 'Home',
      'en': 'Home',
      'zu': 'Ikhaya',
    },
  },
  // page4
  {
    'kjqd3dpl': {
      'fr': 'Code barre',
      'en': 'bar code',
      'zu': 'ibhakhodi',
    },
    'ihqjri94': {
      'fr': 'QR code',
      'en': 'QR code',
      'zu': 'Ikhodi ye-QR',
    },
    'qxkx9o1h': {
      'fr': 'Page 4',
      'en': 'Page 4',
      'zu': 'Ikhasi 4',
    },
    'i9spfljn': {
      'fr': 'Home',
      'en': 'Home',
      'zu': 'Ikhaya',
    },
  },
  // test
  {
    'bg7a581g': {
      'fr': 'Page Title',
      'en': 'PageTitle',
      'zu': 'I-PageTitle',
    },
    'v0zmtkaz': {
      'fr': 'Home',
      'en': 'Home',
      'zu': 'Ikhaya',
    },
  },
  // Animation
  {
    's0mqc8dh': {
      'fr': 'Animation',
      'en': '',
      'zu': '',
    },
    'ymd7xaid': {
      'fr': 'Home',
      'en': '',
      'zu': '',
    },
  },
  // Transition
  {
    '75gth2yc': {
      'fr': 'Fade',
      'en': 'button',
      'zu': 'inkinobho',
    },
    'uqldf5du': {
      'fr': 'Transition',
      'en': 'Photo',
      'zu': 'Isithombe',
    },
    'tt1drxr5': {
      'fr': 'Transition',
      'en': '',
      'zu': '',
    },
    'b9xmbyf4': {
      'fr': 'Home',
      'en': '',
      'zu': '',
    },
  },
  // testpersist
  {
    'flwjq3rt': {
      'fr': 'Label here...',
      'en': '',
      'zu': '',
    },
    'vs74h0y4': {
      'fr': 'Enregistrer',
      'en': '',
      'zu': '',
    },
    'p14kermo': {
      'fr': 'test persiste',
      'en': '',
      'zu': '',
    },
    '2sekp2gm': {
      'fr': 'Home',
      'en': '',
      'zu': '',
    },
  },
  // listeperstisted
  {
    'lk6mut1l': {
      'fr': 'Hello World',
      'en': '',
      'zu': '',
    },
    'owmpjed1': {
      'fr': 'Page Title',
      'en': '',
      'zu': '',
    },
    '4wv8um90': {
      'fr': 'Home',
      'en': '',
      'zu': '',
    },
  },
  // Testwebservice
  {
    'ftunrw6u': {
      'fr': 'Saisir le numéro de parc',
      'en': '',
      'zu': '',
    },
    'agpj4vky': {
      'fr': 'NumParc...',
      'en': '',
      'zu': '',
    },
    '9kyp4yw8': {
      'fr': 'Le numéro de parc doit être saisi',
      'en': '',
      'zu': '',
    },
    '20anc575': {
      'fr': 'Please choose an option from the dropdown',
      'en': '',
      'zu': '',
    },
    '2jtxqbm5': {
      'fr': 'Test webservice GED',
      'en': '',
      'zu': '',
    },
    'du06n5pe': {
      'fr': 'Home',
      'en': '',
      'zu': '',
    },
  },
  // HTML
  {
    'ur3wmd4m': {
      'fr': 'Test HTML',
      'en': '',
      'zu': '',
    },
    '3y9fmr0p': {
      'fr': 'Home',
      'en': '',
      'zu': '',
    },
  },
  // TestDrawer
  {
    '4nzrboyq': {
      'fr': 'Page Title',
      'en': '',
      'zu': '',
    },
    '4us89frx': {
      'fr': 'Home',
      'en': '',
      'zu': '',
    },
  },
  // Stream
  {
    'cx32tay1': {
      'fr': 'Page Title',
      'en': '',
      'zu': '',
    },
    '7uawsoco': {
      'fr': 'Home',
      'en': '',
      'zu': '',
    },
  },
  // modal
  {
    'odyfxu9m': {
      'fr': 'Version 1.0.10',
      'en': 'Version 1.0.6',
      'zu': 'Inguqulo 1.0.6',
    },
    'ud0bs0iu': {
      'fr': 'Cancel',
      'en': 'Cancel',
      'zu': 'Khansela',
    },
  },
  // Miscellaneous
  {
    '51kc6x6j': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'ltt7a7gs': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'r9n1hnct': {
      'fr': 'autorise location',
      'en': 'authorize rental',
      'zu': 'gunyaza ukuqashwa',
    },
    '7tpwmups': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'e3220ms4': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'km6w4cze': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    '6cnaf9c5': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'u3o2po2n': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    '62brt8rf': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'c5yw3fct': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    't3b6pvp1': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    '734rxxd8': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    '7xr21hiu': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'mnae1vkd': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'cj2hm7gz': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'ab9iq7td': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    '10vldigs': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    '3umwi0ch': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'wfq3tmv9': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'uss4a2ar': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    '8mwqdppp': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'p44hapzb': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'md5xpu9k': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'f9e2tpg2': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'mqd0b4qi': {
      'fr': '',
      'en': '',
      'zu': '',
    },
    'b4k2tcrq': {
      'fr': '',
      'en': '',
      'zu': '',
    },
  },
].reduce((a, b) => a..addAll(b));
