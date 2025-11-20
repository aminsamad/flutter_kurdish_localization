import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/intl.dart' as intl;

/// A custom set of date patterns for the `ckb` locale.
//
/// These patterns are designed for Central Kurdish (Sorani) localization
/// following Kurdish cultural conventions and RTL text direction.
// #docregion Date
const kurdishLocaleDatePatterns = {
  'd': 'd',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
  // #enddocregion Date
  'LLLL': 'LLLL',
  'M': 'L',
  'Md': 'd/M',
  'MEd': 'EEE d/M',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M/y',
  'yMd': 'd/M/y',
  'yMEd': 'EEE d/M/y',
  'yMMM': 'MMM y',
  'yMMMd': 'd. MMM y',
  'yMMMEd': 'EEE d. MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd. MMMM y',
  'yMMMMEEEEd': 'EEEE d. MMMM y',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'HH',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'HH',
  'jm': 'HH:mm',
  'jms': 'HH:mm:ss',
  'jmv': 'HH:mm v',
  'jmz': 'HH:mm z',
  'jz': 'HH z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

/// A custom set of date symbols for the `ckb` locale.
///
/// These symbols are designed for Central Kurdish (Sorani) localization
/// with proper Kurdish month names, weekdays, and cultural settings.
// #docregion Date2
const ckbDateSymbols2 = {
  'NAME': 'ckb',
  'ERAS': ['پ.ز', 'ز'],
  'ERANAMES': ['پێش زاینی', 'زاینی'],
  'NARROWMONTHS': [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی',
  ],
  'STANDALONENARROWMONTHS': [
    'ک.د',
    'ش',
    'ز',
    'ن',
    'م',
    'ح',
    'ت',
    'ئ',
    'ل',
    'ت.ی',
    'ت.د',
    'ک.ی',
  ],
  'MONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'STANDALONEMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'SHORTMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'STANDALONESHORTMONTHS': [
    'کانونی دووەم',
    'شوبات',
    'ئازار',
    'نیسان',
    'مایس',
    'حوزەیران',
    'تەمموز',
    'ئاب',
    'ئەیلوول',
    'تشرینی یەکەم',
    'تشرینی دووەم',
    'کانونی یەکەم',
  ],
  'WEEKDAYS': [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  'STANDALONEWEEKDAYS': [
    'یەکشەممە',
    'دووشەممە',
    'سێشەممە',
    'چوارشەممە',
    'پێنجشەممە',
    'هەینی',
    'شەممە',
  ],
  'SHORTWEEKDAYS': [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە',
  ],
  'STANDALONESHORTWEEKDAYS': [
    'یەکشەم',
    'دووشەم',
    'سێشەم',
    'چوارشەم',
    'پێنجشەم',
    'هەینی',
    'شەممە',
  ],
  'NARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'STANDALONENARROWWEEKDAYS': ['ی', 'د', 'س', 'چ', 'پ', 'ه', 'ش'],
  'SHORTQUARTERS': ['چ١', 'چ٢', 'چ٣', 'چ٤'],
  'QUARTERS': ['چارەکی یەکەم', 'چارەکی دووەم', 'چارەکی سێیەم', 'چارەکی چوارەم'],
  'AMPMS': ['پ.ن', 'د.ن'],
  'DATEFORMATS': ['EEEE، d MMMM y', 'd MMMM y', 'dd‏/MM‏/y', 'd‏/M‏/y'],
  'TIMEFORMATS': ['h:mm:ss a zzzz', 'h:mm:ss a z', 'h:mm:ss a', 'h:mm a'],
  'AVAILABLEFORMATS': null,
  'DATETIMEFORMATS': ['{1} {0}', '{1} {0}', '{1} {0}', '{1} {0}'],
  'ZERODIGIT': '٠',
  'FIRSTDAYOFWEEK': 5,
  'WEEKENDRANGE': [4, 5],
  'FIRSTWEEKCUTOFFDAY': 3,
};

// #docregion Delegate
class KurdishCupertinoLocalizationsDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const KurdishCupertinoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'ckb';

  @override
  Future<CupertinoLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    // ✅ FIX: Initialize Kurdish date formatting with await
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: kurdishLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(ckbDateSymbols2),
    );

    late intl.DateFormat fullYearFormat;
    late intl.DateFormat dayFormat;
    late intl.DateFormat weekdayFormat;
    late intl.DateFormat mediumDateFormat;
    late intl.DateFormat singleDigitHourFormat;
    late intl.DateFormat singleDigitMinuteFormat;
    late intl.DateFormat doubleDigitMinuteFormat;
    late intl.DateFormat singleDigitSecondFormat;
    late intl.NumberFormat decimalFormat;

    void loadFormats(String? locale) {
      fullYearFormat = intl.DateFormat.y(locale);
      dayFormat = intl.DateFormat('yMd', locale);
      weekdayFormat = intl.DateFormat.EEEE(locale);
      mediumDateFormat = intl.DateFormat.MMMEd(locale);
      singleDigitHourFormat = intl.DateFormat('EEEE, MMMM d, y', locale);
      singleDigitMinuteFormat = intl.DateFormat('MMMM y', locale);
      doubleDigitMinuteFormat = intl.DateFormat('yMMMd', locale);
      singleDigitSecondFormat = intl.DateFormat('MMM d', locale);
      decimalFormat = intl.NumberFormat.decimalPattern('ar');
    }

    if (intl.DateFormat.localeExists(localeName)) {
      loadFormats(localeName);
    } else if (intl.DateFormat.localeExists(locale.languageCode)) {
      loadFormats(locale.languageCode);
    } else {
      loadFormats(null);
    }

    return SynchronousFuture<CupertinoLocalizations>(
      KurdishCupertinoLocalizations(
        localeName: localeName,
        decimalFormat: decimalFormat,
        fullYearFormat: fullYearFormat,
        dayFormat: dayFormat,
        doubleDigitMinuteFormat: doubleDigitMinuteFormat,
        mediumDateFormat: mediumDateFormat,
        singleDigitHourFormat: singleDigitHourFormat,
        singleDigitMinuteFormat: singleDigitMinuteFormat,
        singleDigitSecondFormat: singleDigitSecondFormat,
        weekdayFormat: weekdayFormat,
      ),
    );
  }

  @override
  bool shouldReload(KurdishCupertinoLocalizationsDelegate old) => false;
}
// #enddocregion Delegate

/// A custom set of localizations for the 'ckb' locale. This provides
/// comprehensive Central Kurdish (Sorani) translations for all Cupertino
/// components with proper RTL support and Kurdish cultural conventions.
class KurdishCupertinoLocalizations extends GlobalCupertinoLocalizations {
  const KurdishCupertinoLocalizations({
    super.localeName = 'ckb',
    required super.fullYearFormat,
    required super.mediumDateFormat,
    required super.decimalFormat,
    required super.dayFormat,
    required super.doubleDigitMinuteFormat,
    required super.singleDigitHourFormat,
    required super.singleDigitMinuteFormat,
    required super.singleDigitSecondFormat,
    required super.weekdayFormat,
  });

  // #docregion Getters

  @override
  String get alertDialogLabel => r'ئاگادارکردنەوە';

  // #enddocregion Getters

  @override
  String get anteMeridiemAbbreviation => r'پ.ن';

  @override
  String get copyButtonLabel => r'کۆپی';

  @override
  String get cutButtonLabel => r'بڕین';

  @override
  String get modalBarrierDismissLabel => r'لادان';

  @override
  String get pasteButtonLabel => r'پەیست';

  @override
  String get postMeridiemAbbreviation => r'د.ن';

  @override
  String get selectAllButtonLabel => r'دیاریکردنی هەموو';

  static const LocalizationsDelegate<CupertinoLocalizations> delegate =
      KurdishCupertinoLocalizationsDelegate();

  @override
  String get datePickerDateOrderString => "هەڵبژاردنی بەروار";

  @override
  String get datePickerDateTimeOrderString => "کات هەڵبژێرە";

  @override
  String? get datePickerHourSemanticsLabelOther => "\$count کاتژمێر";

  @override
  String? get datePickerMinuteSemanticsLabelOther => "\$count خولەک";

  @override
  String get searchTextFieldPlaceholderLabel => "گەڕان";

  @override
  String get tabSemanticsLabelRaw => "خشتەبەندی \$tabIndex لە \$tabCount";

  @override
  String? get timerPickerHourLabelOther => "هەڵبژێرەری کاتژمێر";

  @override
  String? get timerPickerMinuteLabelOther => "هەڵبژێرەری خولەک";

  @override
  String? get timerPickerSecondLabelOther => "هەڵبژێرەری چرکە";

  @override
  String get todayLabel => "ئەمڕۆ";

  @override
  String get noSpellCheckReplacementsLabel =>
      "هیچ جێگرەوەیەکی پشکنینی ڕێنووسی نییە";

  @override
  String get lookUpButtonLabel => 'بە دوادا گەڕان';

  @override
  String get menuDismissLabel => 'داخستنی پێڕست';

  @override
  String get searchWebButtonLabel => 'گەڕان لە وێب';

  @override
  String get shareButtonLabel => 'هاوبەشکردن';

  @override
  String get clearButtonLabel => "پاککردنەوە";

  @override
  String get backButtonLabel => 'گەڕانەوە';

  @override
  String get cancelButtonLabel => 'هەڵوەشاندنەوە';

  @override
  String get expansionTileCollapsedHint => 'دوو جار دابگرە بۆ فراوانکردن';

  @override
  String get expansionTileCollapsedTapHint => 'فراوان بکە بۆ زانیاری زیاتر';

  @override
  String get expansionTileExpandedHint => 'دوو جار دابگرە بۆ کۆکردنەوە';

  @override
  String get expansionTileExpandedTapHint => 'کۆیبکەرەوە';

  @override
  String get collapsedHint => 'فراوانکراوە';

  @override
  String get expandedHint => 'کۆکراوەتەوە';
}
